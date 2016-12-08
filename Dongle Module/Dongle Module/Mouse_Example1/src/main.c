/**
 * \file
 *
 * \brief Main functions for Mouse example
 *
 * Copyright (c) 2009-2015 Atmel Corporation. All rights reserved.
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
#include "conf_usb.h"
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

int16_t x = 0; // only the lower 12 bits of these are used
int16_t y = 0;
int16_t lx = 0;
int16_t ly = 0;
int32_t yCount = 0;
int32_t xCount = 0;
int32_t temp = 0;
int32_t scrollX = 0;
int32_t scrollY = 0;
uint32_t Xtotal = 0;
uint32_t Ytotal = 0;
int xVals[5] = {0,0,0,0,0};
int yVals[5] = {0,0,0,0,0};

bool left = false;
bool middle = false;
bool right = false;

bool arrow_up = false;
bool arrow_down = false;
bool arrow_right = false;
bool arrow_left = false;

uint8_t xbee_sendbuffer[4];
uint8_t xbee_receivebuffer[4];

uint32_t cameraTimeOut = 10000;
bool calibration = false;
bool laserEnabled = false;

struct usart_module usart_instance;

uint8_t button_info = 0x00;

static volatile bool main_b_mouse_enable = false;

void configure_LED_PWM(void);
struct tcc_module tcc0;
struct tcc_module tcc1;
void configure_button_pins(void);
void setLEDcolor(unsigned long int val);
void configure_radio(void);
void configure_usart(void);
void ColorCycle(void);
void setRGB(uint16_t red, uint16_t green, uint16_t blue);
//void setTrackBallRGBW(uint16_t red, uint16_t green, uint16_t blue, uint16_t white);

////////////// Configure all of the LED ports as PWM outputs //////////////////
void configure_LED_PWM(void)
{
	struct tcc_config config_tcc;
	tcc_get_config_defaults(&config_tcc, TCC0);
	config_tcc.counter.period = 0xFFFF;
	config_tcc.compare.wave_generation = TCC_WAVE_GENERATION_SINGLE_SLOPE_PWM;
	config_tcc.compare.match[0] = 0xFFFF;
	config_tcc.pins.enable_wave_out_pin[0] = true;
	config_tcc.pins.wave_out_pin[0]        = PIN_PA21F_TCC0_WO7;
	config_tcc.pins.wave_out_pin_mux[0]    = MUX_PA21F_TCC0_WO7;
	tcc_init(&tcc0, TCC0, &config_tcc);
	tcc_enable(&tcc0);
	
	tcc_get_config_defaults(&config_tcc, TCC1);
	config_tcc.counter.period = 0xFFFF;
	config_tcc.compare.wave_generation = TCC_WAVE_GENERATION_SINGLE_SLOPE_PWM;
	config_tcc.compare.match[0] = 0xFFFF;
	config_tcc.compare.match[1] = 0xFFFF;
	config_tcc.pins.enable_wave_out_pin[0] = true;
	config_tcc.pins.enable_wave_out_pin[1] = true;
	config_tcc.pins.enable_wave_out_pin[2] = true;
	config_tcc.pins.wave_out_pin[0]        = PIN_PA06E_TCC1_WO0;
	config_tcc.pins.wave_out_pin[1]        = PIN_PA07E_TCC1_WO1;
	config_tcc.pins.wave_out_pin_mux[0]    = MUX_PA06E_TCC1_WO0;
	config_tcc.pins.wave_out_pin_mux[1]    = MUX_PA07E_TCC1_WO1;
	tcc_init(&tcc1, TCC1, &config_tcc);
	tcc_enable(&tcc1);
}
///////////////////////////////////////////////////////////////////////////

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

//Configure the USART port
void configure_usart(void){
	struct usart_config config_usart;
	usart_get_config_defaults(&config_usart);
	config_usart.baudrate = 57600;
	config_usart.mux_setting = USART_RX_1_TX_0_XCK_1;
	config_usart.pinmux_pad0 = PINMUX_PB08D_SERCOM4_PAD0;
	config_usart.pinmux_pad1 = PINMUX_PB09D_SERCOM4_PAD1;
	config_usart.pinmux_pad2 = PINMUX_UNUSED;
	config_usart.pinmux_pad3 = PINMUX_UNUSED;

	while(usart_init(&usart_instance, SERCOM4, &config_usart) != STATUS_OK){}

	usart_enable(&usart_instance);
}


/*! \brief Main function. Execution starts here.
 */
int main(void)
{
	irq_initialize_vectors();
	cpu_irq_enable();
	system_init();
	configure_radio();
	configure_usart();
	//configure_LED_PWM();

	// Initialize the sleep manager
	sleepmgr_init();
	ui_init();
	ui_powerdown();

	// Start USB stack to authorize VBus monitoring
	udc_start();


	// The main loop manages only the power mode
	// because the USB management is done by interrupt
	while (true) {
#ifdef USB_DEVICE_LOW_SPEED
		// No USB "Keep a live" interrupt available in low speed
		// to scan mouse interface then use main loop
		if (main_b_mouse_enable) {
			static volatile uint16_t virtual_sof_sub = 0;
			static uint16_t virtual_sof = 0;
			if (sysclk_get_cpu_hz()*50000 ==
				virtual_sof_sub++) {
				virtual_sof_sub = 0;
				static uint16_t virtual_sof = 0;
				ui_process(virtual_sof++);
			}
		}
#else /* #ifdef USB_DEVICE_LOW_SPEED */
	//xbee_sendbuffer[0] = 0x00;
	//xbee_sendbuffer[1] = 0x01;
	//xbee_sendbuffer[2] = 0x02;
	//xbee_sendbuffer[3] = 0x03;
	//while(usart_write_buffer_wait(&usart_instance, xbee_sendbuffer, sizeof(xbee_sendbuffer)) != STATUS_OK){}

		// this will receive the mouse location from the camera module
		if (usart_read_buffer_wait(&usart_instance, xbee_receivebuffer, sizeof(xbee_receivebuffer)) == STATUS_OK) 
		{
			//info received from camera module (mouse movement)
			if (xbee_receivebuffer[0] == 'Y' && xbee_receivebuffer[1] == 'C' && xbee_receivebuffer[2] == 'Y' && xbee_receivebuffer[3] == 'C'){ // set the system into calibration mode when button is pressed on camera
				calibration = true;
			}

			else if (xbee_receivebuffer[0] == 'N' && xbee_receivebuffer[1] == 'C' && xbee_receivebuffer[2] == 'N' && xbee_receivebuffer[3] == 'C'){ // set the system to regular operation mode when camera sends a 'N' packet
				calibration = false;
			}
			
			else {//if (laserEnabled) {
				lx = x;
				ly = y;
				xCount = 0;
				yCount = 0;

				for (int i = 0; i < 4; i++) {
					//x LSB 00<data>	x MSB 01<data>
					//y LSB 10<data>	y MSB 11<data>
					switch (xbee_receivebuffer[i] >> 6) {
						case 0: //x LSB
						xCount += 2;
						temp = (xbee_receivebuffer[i] & 0x3F);
						x = temp;
						break;
						
						case 1: //x MSB
						xCount += 3;
						temp = (xbee_receivebuffer[i] & 0x3F);
						x = x | (temp << 6);
						break;
						
						case 2: //y LSB
						yCount += 2;
						temp = (xbee_receivebuffer[i] & 0x3F);
						y = temp;
						break;
						
						case 3: //y MSB
						yCount += 3;
						temp = (xbee_receivebuffer[i] & 0x3F);
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
					int avg = 4;
					Xtotal -= xVals[0];
					Ytotal -= yVals[0];
					
					for(int i = 0; i < avg-1; i++)
					{
						yVals[i] = yVals[i + 1];
						xVals[i] = xVals[i + 1];
					}
					
					Xtotal += x;
					Ytotal += y;

					yVals[avg-1] = y;
					xVals[avg-1] = x;
					
					x = Xtotal/avg;
					y = Ytotal/avg;

					x = x*(0x7FFF/4095);
					y = y*(0x7FFF/4095);
				}
			}
			
			if (calibration) {
				// request a new frame from camera module
				xbee_sendbuffer[0] = 'C';
				xbee_sendbuffer[1] = button_info;
				xbee_sendbuffer[2] = 0x00;
				xbee_sendbuffer[3] = 0x00;
//				for (int i = 0; i < 2; i++)
				while(usart_write_buffer_wait(&usart_instance, xbee_sendbuffer, sizeof(xbee_sendbuffer)) != STATUS_OK){}
			}
			else {
				// request info from laser module
				radio_sendbuffer[0] = 0x00; 
				radio_sendbuffer[1] = 0x00;
				radio_sendbuffer[2] = 0x00;
				radio_sendbuffer[3] = 0x00; //B is arbitrary. Y will set LEDs to color show. N will set it to white.
//					for (int i = 0; i < 2; i++)
				//RFM_send(LASER_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false); //send empty packet
			}
			
		}

		//END OF CAMERA MODULE CODE
			
		//info received from laser module (clicks)
		if (RFM_receiveDone())
		{	
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

					//arrow_up = (button_info & 0x80) >> 7;
					//arrow_down = (button_info & 0x40) >> 6;
					//arrow_left = (button_info & 0x20) >> 5;
					//arrow_right = (button_info & 0x10) >> 4;
					
					if (button_info & 0x01){ //if laser is enabled
						laserEnabled = true;
						port_pin_set_output_level(PIN_PA02, HIGH);
					}
					else{
						laserEnabled = false;
						port_pin_set_output_level(PIN_PA02, LOW);
					}
					
					break;
				}
			}
			
			// request a new frame from camera module
			//radio_sendbuffer[0] = 'R';
			//while(usart_write_buffer_wait(&usart_instance, xbee_sendbuffer, sizeof(xbee_sendbuffer)) != STATUS_OK){}

			//RFM_send(CAMERA_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false); //if commented out, the radio is not sending
		}

		//if(calibration)
		//{
			//ColorCycle();
		//}
		//setRGB(0,0xFFFF,0xFFFF);
		//setRGB(0xFFFF,0,0xFFFF);
		//setRGB(0xFFFF,0xFFFF, 0);
		//setRGB(0xFFFF,0xFFFF,0xFFFF);

		//handle camera timeout
		/*if (millis() > cameraTimeOut) { // if time exceeds 500ms
			//radio_sendbuffer[0] = 'R'; //regular mode
			radio_sendbuffer[0] = calibration + '0';
			RFM_send(CAMERA_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false);
			//calibration = false;
			reset_millis();
		}*/

		//sleepmgr_enter_sleep();


#endif
	}
}

void main_suspend_action(void)
{
	ui_powerdown();
}

void main_resume_action(void)
{
	ui_wakeup();
}

void main_sof_action(void)
{
	if (!main_b_mouse_enable)
		return;
	ui_process(udd_get_frame_number());
}

void main_remotewakeup_enable(void)
{
	ui_wakeup_enable();
}

void main_remotewakeup_disable(void)
{
	ui_wakeup_disable();
}

#ifdef USB_DEVICE_LPM_SUPPORT
void main_suspend_lpm_action(void)
{
	ui_powerdown();
}

void main_remotewakeup_lpm_disable(void)
{
	ui_wakeup_disable();
}

void main_remotewakeup_lpm_enable(void)
{
	ui_wakeup_enable();
}
#endif

bool main_mouse_enable(void)
{
	main_b_mouse_enable = true;
	return true;
}

void main_mouse_disable(void)
{
	main_b_mouse_enable = false;
}


/**
 * \mainpage ASF USB Device HID Mouse
 *
 * \section intro Introduction
 * This example shows how to implement a USB Device HID Mouse
 * on Atmel MCU with USB module.
 * The application note AVR4903 provides information about this implementation.
 *
 * \section startup Startup
 * The example uses the buttons or sensors available on the board
 * to simulate a standard mouse.
 * After loading firmware, connect the board (EVKxx,Xplain,...) to the USB Host.
 * When connected to a USB host system this application provides a mouse application
 * in the Unix/Mac/Windows operating systems.
 * This example uses the native HID driver for these operating systems.
 *
 * \copydoc UI
 *
 * \section example About example
 *
 * The example uses the following module groups:
 * - Basic modules:
 *   Startup, board, clock, interrupt, power management
 * - USB Device stack and HID modules:
 *   <br>services/usb/
 *   <br>services/usb/udc/
 *   <br>services/usb/class/hid/
 *   <br>services/usb/class/hid/mouse/
 * - Specific implementation:
 *    - main.c,
 *      <br>initializes clock
 *      <br>initializes interrupt
 *      <br>manages UI
 *    - specific implementation for each target "./examples/product_board/":
 *       - conf_foo.h   configuration of each module
 *       - ui.c        implement of user's interface (buttons, leds)
 */
 void setRGB(uint16_t red, uint16_t green, uint16_t blue)
 {
	 /* BLUE */
	 tcc_set_compare_value(&tcc1, (enum tcc_match_capture_channel) (1), blue);
	 /* GREEN */
	 tcc_set_compare_value(&tcc1, (enum tcc_match_capture_channel) (0), green);
	 /* RED */
	 tcc_set_compare_value(&tcc0, (enum tcc_match_capture_channel) (1), red);
 }

void ColorCycle(void)
{
	static int color = 0;
	static int speed = 10;
	static int index = 0;
	if(index == 0)
	{
		setRGB(0xFFFF - color,color,0x0);
	}
	else if(index == 1)
	{
		setRGB(0x0,0xFFFF - color,color);
	}
	else if(index == 2)
	{
		setRGB(color,0x0,0xFFFF - color);
	}
	
	color += speed;
	if(color >= (0xFFFF - speed))
	{
		color = 0;
		index++;

		if(index > 2){
			index = 0;
		}
		
	}
}