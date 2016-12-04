/**
 * \file
 *
 * \brief User Interface
 *
 * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */
/*
 * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
 */

#include <asf.h>
#include "ui.h"
#include "RFM69.h"

// Addresses for this node.
#define NETWORKID     0   // Must be the same for all nodes (0 to 255)
#define MYNODEID      2   // My node ID (0 to 255)
#define TONODEID      1   // Destination node ID (0 to 254, 255 = broadcast)
// RFM69 frequency:
#define FREQUENCY     RF69_915MHZ
// AES encryption:
#define ENCRYPT       true // Set to "true" to use encryption
#define ENCRYPTKEY    "TOPSECRETPASSWRD" // Use the same 16-byte key on all nodes
// Use ACKnowledge when sending messages:
#define USEACK        false


////////
#define CAMERA_MODULE_NODE_ID 1
#define LASER_MODULE_NODE_ID 3
static char radio_sendbuffer[62];
static int radio_sendlength = 1;
////////

void configure_button_pins(void);
void setLEDcolor(unsigned long int val);
void configure_radio();
// colors can be made by creating an unsigned long int
// colors are 1 byte each, 0x<blue><green><red>
const unsigned long int red = 0x0000FF;//red
const unsigned long int green = 0x00FF00;//green
const unsigned long int blue = 0xFF0000;//blue
//int blah = wiringPiSPISetup(1, 100000);
unsigned char LEDSPIbuffer[8];
void setLEDcolor(unsigned long int val) {
	LEDSPIbuffer[0] = 0x00; //starting frame
	LEDSPIbuffer[1] = 0x00;
	LEDSPIbuffer[2] = 0x00;
	LEDSPIbuffer[3] = 0x00;
	LEDSPIbuffer[4] = 0xFF;
	LEDSPIbuffer[5] = (val >> 16) & 0xFF;
	LEDSPIbuffer[6] = (val >> 8) & 0xFF ;
	LEDSPIbuffer[7] = (val & 0xFF);
	//wiringPiSPIDataRW(0, LEDSPIbuffer, 8);
		
	//Delay(100);
	uint32_t time = millis();
	do {
		if(millis() < time)
		time = millis();
	} while(millis()-time < 100);
}
// Configure the LED selection port as output
void configure_button_pins(void)
{
	struct port_config config_port_pin;
	port_get_config_defaults(&config_port_pin);
	config_port_pin.direction = PORT_PIN_DIR_INPUT;
	//port_pin_set_config(PIN_PA0, &config_port_pin);
}
//configure the RFM69 module
void configure_radio(void) {
	RFM_initialize(FREQUENCY, MYNODEID, NETWORKID);
	RFM_setHighPower(true);
		
	if (ENCRYPT)
		RFM_encrypt(ENCRYPTKEY);
}

#define  MOUSE_MOVE_RANGE 5


/* Interrupt on "pin change" from push button to do wakeup on USB
 * Note:
 * This interrupt is enable when the USB host enable remote wakeup feature
 * This interrupt wakeup the CPU if this one is in idle mode
 */
static void ui_wakeup_handler(void)
{
	/* It is a wakeup then send wakeup USB */
	udc_remotewakeup();
	//LED_On(LED_0_PIN);
}


void ui_init(void)
{
	/* Initialize LEDs */
	LED_Off(LED_0_PIN);
	
	// Initialize the RFM69HCW:
	configure_radio();
	//configure_port_pins();
}

void ui_powerdown(void)
{
	//LED_Off(LED_0_PIN);
}


void ui_wakeup_enable(void)
{
	extint_chan_enable_callback(BUTTON_0_EIC_LINE,EXTINT_CALLBACK_TYPE_DETECT);
}

void ui_wakeup_disable(void)
{
	extint_chan_disable_callback(BUTTON_0_EIC_LINE,EXTINT_CALLBACK_TYPE_DETECT);
}

void ui_wakeup(void)
{
	//LED_On(LED_0_PIN);
}

void ui_process(uint16_t framenumber)
{
	static uint8_t cpt_sof = 0;
	static uint32_t cameraTimeOut = 10000;
	static bool calibration = false;
	static bool laserEnabled = false;
	
	
		/* Mouse movement variables */
	static int16_t x = 0; // only the lower 12 bits of these are used
	static int16_t y = 0;
	static int16_t lx = 0;
	static int16_t ly = 0;
	static int32_t yCount = 0;
	static int32_t xCount = 0;
	static int32_t temp = 0;
	static int32_t scrollX = 0;
	static int32_t scrollY = 0;
	static uint32_t Xtotal = 0;
	static uint32_t Ytotal = 0;
	static int xVals[5] = {0,0,0,0,0};
	static int yVals[5] = {0,0,0,0,0};

	static bool left = false;
	static bool middle = false;
	static bool right = false;
	
	static uint8_t button_info = 0x00; //order is: up down left right left_click right_click middle_click laser_enabled

	// this will receive the mouse location from the camera module
	if (RFM_receiveDone()) {
		//info received from camera module (mouse movement)
		if (RFM_SENDERID == CAMERA_MODULE_NODE_ID) {
			if (RFM_DATA[0] == 'Y' && RFM_DATALEN == 1) // set the system into calibration mode when button is pressed on camera
				calibration = true;

			else if (RFM_DATA[0] == 'N' && RFM_DATALEN == 1) // set the system to regular operation mode when camera sends a 'N' packet
				calibration = false;
				
			else {
				lx = x;
				ly = y;
				xCount = 0;
				yCount = 0;

				for (int i = 0; i < RFM_DATALEN; i++) {
					//x LSB 00<data>	x MSB 01<data>
					//y LSB 10<data>	y MSB 11<data>
					switch (RFM_DATA[i] >> 6) {
						case 0: //x LSB
							xCount += 2;
							temp = (RFM_DATA[i] & 0x3F);
							x = temp;
							break;
				
						case 1: //x MSB
							xCount += 3;
							temp = (RFM_DATA[i] & 0x3F);
							x = x | (temp << 6);
							break;
				
						case 2: //y LSB
							yCount += 2;
							temp = (RFM_DATA[i] & 0x3F);
							y = temp;
							break;
				
						case 3: //y MSB
							yCount += 3;
							temp = (RFM_DATA[i] & 0x3F);
							y = y | (temp << 6);
							break;
					}
				}

				if(xCount != 5 || yCount != 5)
				{
					x = lx;
					y = ly;
				}
				else
				{
					Xtotal -= xVals[0];
					Ytotal -= yVals[0];
				
					for(int i = 0; i < 4; i++)
					{
						yVals[i] = yVals[i + 1];
						xVals[i] = xVals[i + 1];
					}
				
					Xtotal += x;
					Ytotal += y;

					yVals[4] = y;
					xVals[4] = x;
				
					x = Xtotal/5;
					y = Ytotal/5;	

					x = x*(0x7FFF/640);
					y = y*(0x7FFF/480);
				}
			}
			
			if (calibration) {
				// request a new frame from camera module
				radio_sendbuffer[0] = 'C';
				for (int i = 0; i < 2; i++)
					RFM_send(CAMERA_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false);
			}
			else {
				// request info from laser module
				radio_sendbuffer[0] = 'B'; //B is arbitrary. Y will set LEDs to color show. N will set it to white.
				for (int i = 0; i < 2; i++)
					RFM_send(LASER_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false); //send empty packet
			}
		}
		
		//info received from laser module (clicks)
		else if (RFM_SENDERID == LASER_MODULE_NODE_ID) {
			
			for (int i = 0; i < RFM_DATALEN; i++) {
				switch (i) {
					case 0: //x axis scroll
						scrollX = RFM_DATA[i];
						break;
					
					case 1: //y axis scroll
						scrollY = RFM_DATA[i];
						break;
					
					case 2: //button info byte
						button_info = RFM_DATA[i];
						
						//mouse_move(x, y);
						//mouse_buttons((button_info & 0x08) >> 3, (button_info & 0x02) >> 1, (button_info & 0x04) >> 2);
						left = (button_info & 0x08) >> 3;
						middle = (button_info & 0x02) >> 1;
						right = (button_info & 0x04) >> 2;
						
						if (button_info & 0x01) //if laser is enabled
							laserEnabled = true;
						else
							laserEnabled = false;
						
						break;
				}
			}
			
			// request a new frame from camera module
			radio_sendbuffer[0] = 'R';
			RFM_send(CAMERA_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false);
		}
	}
	else
	{
		//LED_Off(LED_0_PIN);
	}
	
	//handle camera timeout
	if (millis() > cameraTimeOut) { // if time exceeds 500ms
		//radio_sendbuffer[0] = 'R'; //regular mode
		radio_sendbuffer[0] = calibration + '0';
		RFM_send(CAMERA_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false);
		//calibration = false;
		reset_millis();
	}
	/*else
	{
		//x += 50;
		//y += 50;
		//udi_hid_mouse_moveX(x);
		//udi_hid_mouse_moveY(y);
	}*/
	if (!calibration && laserEnabled) // move mouse only if laser enabled and not calibrating
		mouse_move(x, y, scrollX, scrollY, (button_info & 0x08) >> 3, (button_info & 0x02) >> 1, (button_info & 0x04) >> 2);
		/*x += 50;
		y += 50;
		udi_hid_mouse_moveX(x);
		udi_hid_mouse_moveY(y);*/
}

/**
 * \defgroup UI User Interface
 *
 * Human interface on SAMD21-XPlain:
 * - Led 0 blinks when USB is connected and active
 * - Push button 0 (SW0) are used to move mouse up
 * - Only a low level on push button 0 will generate a wakeup to USB Host in remote wakeup mode.
 *
 */
