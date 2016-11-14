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

#define  MOUSE_MOVE_RANGE 5

#define CAMERA_MODULE_NODE_ID 2
#define LASER_MODULE_NODE_ID 3

static char radio_sendbuffer[62];
static int radio_sendlength = 1;

/* Interrupt on "pin change" from push button to do wakeup on USB
 * Note:
 * This interrupt is enable when the USB host enable remote wakeup feature
 * This interrupt wakeup the CPU if this one is in idle mode
 */
static void ui_wakeup_handler(void)
{
	/* It is a wakeup then send wakeup USB */
	udc_remotewakeup();
	LED_On(LED_0_PIN);
}


void ui_init(void)
{
	struct extint_chan_conf config_extint_chan;

	extint_chan_get_config_defaults(&config_extint_chan);

	config_extint_chan.gpio_pin            = BUTTON_0_EIC_PIN;
	config_extint_chan.gpio_pin_mux        = BUTTON_0_EIC_MUX;
	config_extint_chan.gpio_pin_pull       = EXTINT_PULL_UP;
	config_extint_chan.filter_input_signal = true;
	config_extint_chan.detection_criteria  = EXTINT_DETECT_FALLING;
	extint_chan_set_config(BUTTON_0_EIC_LINE, &config_extint_chan);
	extint_register_callback(ui_wakeup_handler, BUTTON_0_EIC_LINE,
			EXTINT_CALLBACK_TYPE_DETECT);
	extint_chan_enable_callback(BUTTON_0_EIC_LINE,EXTINT_CALLBACK_TYPE_DETECT);

	/* Initialize LEDs */
	LED_Off(LED_0_PIN);
}

void ui_powerdown(void)
{
	LED_Off(LED_0_PIN);
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
	LED_On(LED_0_PIN);
}

void ui_process(uint16_t framenumber)
{
	static uint8_t cpt_sof = 0;

	if ((framenumber % 1000) == 0) {
		LED_On(LED_0_PIN);
	}
	if ((framenumber % 1000) == 500) {
		LED_Off(LED_0_PIN);
	}
	/* Scan process running each 5ms */
	cpt_sof++;
	if (cpt_sof < 5) {
		return;
	}
	cpt_sof = 0;

	/* Mouse movement variables */
	static uint16_t x = 0; // only the lower 12 bits of these are used
	static uint16_t y = 0;
	
	static uint8_t button_info = 0x00; //order is: ? ? ? ? left_click right_click middle_click laser_on?
/*	
	// this will receive the mouse location from the camera module
	if (RFM_receiveDone()) {
		
		//info received from camera module (mouse movement)
		if (RFM_SENDERID == CAMERA_MODULE_NODE_ID) {
			for (int i = 0; i < RFM_DATALEN; i++) {
				//x LSB 00<data>	x MSB 01<data>
				//y LSB 10<data>	y MSB 11<data>
				switch (RFM_DATA[i] >> 6) {
					case 0: //x LSB
						x |= (RFM_DATA[i] & 0x3F);
						break;
				
					case 1: //x MSB
						x |= (RFM_DATA[i] & 0x3F) << 6;
						break;
				
					case 2: //y LSB
						y |= (RFM_DATA[i] & 0x3F);
						break;
				
					case 3: //y MSB
						y |= (RFM_DATA[i] & 0x3F) << 6;
						break;
				}
			}
			
			udi_hid_mouse_moveX(x);
			udi_hid_mouse_moveY(y);
			
			//request info from laser module
			RFM_send(LASER_MODULE_NODE_ID, radio_sendbuffer, radio_sendlength, false); //send empty packet
		}
		
		//info received from laser module (clicks)
		else if (RFM_SENDERID == CAMERA_MODULE_NODE_ID) {
			for (int i = 0; i < RFM_DATALEN; i++) {
				switch (i) {
					case 0: //x axis scroll
						udi_hid_mouse_moveScroll(RFM_DATA[i]);
						break;
					
					case 1: //y axis scroll
						
						break;
					
					case 2: //button info byte
						button_info = RFM_DATA[i];
						
						udi_hid_mouse_btnleft(button_info & 0x08);
						udi_hid_mouse_btnright(button_info & 0x04);
						udi_hid_mouse_btnmiddle(button_info & 0x02);
						
						break;
				}
			}
		}
	}
	*/
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
