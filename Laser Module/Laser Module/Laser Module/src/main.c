/**
 * \file
 *
 * \brief Empty user application template
 *
 */

/**
 * \mainpage User Application template doxygen documentation
 *
 * \par Empty user application template
 *
 * Bare minimum empty user application template
 *
 * \par Content
 *
 * -# Include the ASF header files (through asf.h)
 * -# Minimal main function that starts with a call to system_init()
 * -# "Insert application code here" comment
 *
 */

/*
 * Include header files for all drivers that have been imported from
 * Atmel Software Framework (ASF).
 */
/*
 * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
 */
#include <asf.h>
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
#define USEACK        true


// Initialization functions
void configure_LED_PWM(void);
struct tcc_module tcc0;

////////////// Configure all of the LED ports as PWM outputs //////////////////
void configure_LED_PWM(void)
{
	struct tcc_config config_tcc;
	tcc_get_config_defaults(&config_tcc, TCC0);
	config_tcc.counter.period = 0xFFFF;
	config_tcc.compare.wave_generation = TCC_WAVE_GENERATION_SINGLE_SLOPE_PWM;
	config_tcc.compare.match[0] = 0;
	config_tcc.compare.match[1] = 0;
	config_tcc.compare.match[2] = 0;
	config_tcc.compare.match[3] = 0;
	config_tcc.pins.enable_wave_out_pin[0] = true;
	config_tcc.pins.enable_wave_out_pin[1] = true;
	config_tcc.pins.enable_wave_out_pin[2] = true;
	config_tcc.pins.enable_wave_out_pin[3] = true;
	config_tcc.pins.wave_out_pin[0]        = PIN_PA14F_TCC0_WO4;
	config_tcc.pins.wave_out_pin[1]        = PIN_PA15F_TCC0_WO5;
	config_tcc.pins.wave_out_pin[2]        = PIN_PA20F_TCC0_WO6;
	config_tcc.pins.wave_out_pin[3]        = PIN_PA21F_TCC0_WO7;
	config_tcc.pins.wave_out_pin_mux[0]    = MUX_PA14F_TCC0_WO4;
	config_tcc.pins.wave_out_pin_mux[1]    = MUX_PA15F_TCC0_WO5;
	config_tcc.pins.wave_out_pin_mux[2]    = MUX_PA20F_TCC0_WO6;
	config_tcc.pins.wave_out_pin_mux[3]    = MUX_PA21F_TCC0_WO7;
	tcc_init(&tcc0, TCC0, &config_tcc);
	tcc_enable(&tcc0);
}
///////////////////////////////////////////////////////////////////////////



int main (void)
{
    /* Initialize system */
	system_init();
	//configure_spi_master();
	//configure_spi_master_callbacks();

    //configure_extint_channel();
    //configure_extint_callbacks();
    //system_interrupt_enable_global();

	//configure_LED_PWM();

    //spi_select_slave(&spi_master_instance, &slave, true);
    //spi_write_buffer_job(&spi_master_instance, buffer, BUF_LENGTH);
    //while (!transfer_complete_spi_master) {
	    /* Wait for write complete */
    //}
    //spi_select_slave(&spi_master_instance, &slave, false);
	//while (true) {
		
	//}

	// Initialize the RFM69HCW:
	RFM_initialize(FREQUENCY, MYNODEID, NETWORKID);
	RFM_setHighPower(true); // Always use this for RFM69HCW

	// Turn on encryption if desired:
	if (ENCRYPT)
	RFM_encrypt(ENCRYPTKEY);


	int sendlength = 16;
	int index = 0;
	while(1)
	{
		char sendbuffer[16] = "Hello World!   ";
		// Set up a "buffer" for characters that we'll send:
		index++;
		if(index < 10)
			sendbuffer[15] = index + '0';
		else if(index > 10 && index < 100)
		{
			sendbuffer[14] = index/10 + '0';
			sendbuffer[15] = index%10 + '0';
		}
			

		// SENDING

		// In this section, we'll gather serial characters and
		// send them to the other node if we (1) get a carriage return,
		// or (2) the buffer is full (61 characters).
		  
		// If there is any serial input, add it to the buffer:

		//if (Serial.available() > 0)
		//{
			//dbg_print_str("sending to node ");
			//dbg_print_str("%d", TONODEID);
			//dbg_print_str(": [");
			//for (byte i = 0; i < sendlength; i++)
			//dbg_print_str(sendbuffer[i]);
			//dbg_print_str("]\n");
			  
			// If you want acknowledgements, use RFM_sendWithRetry(): 
			if (USEACK)
			{
				int ACK = 0;
				if (RFM_sendWithRetry(TONODEID, sendbuffer, sendlength, 2, 100))
					ACK = 1;
				else
					ACK = 0;
			}
			  
			else // don't use ACK
			{
				RFM_send(TONODEID, sendbuffer, sendlength, false);
			}
			  
			sendlength = 0; // reset the packet
		//}
	//}

	// RECEIVING

	// In this section, we'll check with the RFM69HCW to see
	// if it has received any packets:

	if (RFM_receiveDone()) // Got one!
	{
		// Print out the information:
		  
		//dbg_print_str("received from node ");
		//dbg_print_str("%d", RFM_SENDERID);
		//dbg_print_str(": [");

		// The actual message is contained in the RFM_DATA array,
		// and is RFM_DATALEN bytes in size:
		  
		//for (byte i = 0; i < RFM_DATALEN; i++)
		//dbg_print_str((char)RFM_DATA[i]);
		RFM_DATALEN = RFM_DATALEN;
		// RFM_RSSI is the "Receive Signal Strength Indicator",
		// smaller numbers mean higher power.
		  
		//dbg_print_str("], RSSI ");
		//dbg_print_str("%d\n", RFM_RSSI);
		RFM_RSSI = RFM_RSSI;

		// Send an ACK if requested.
		// (You don't need this code if you're not using ACKs.)
		  
		if (RFM_ACKRequested())
		{
			RFM_sendACK("", 0);
		//	dbg_print_str("ACK sent\n");
		}
	}
  }
}
