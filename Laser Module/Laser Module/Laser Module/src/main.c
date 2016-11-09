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
#include "BQ27441.h"

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

// Battery Capacity
#define Capacity 1200

// Initialization functions
void configure_LED_PWM(void);
struct tcc_module tcc0;
void configure_button_pins(void);


////////////// Configure all of the LED ports as PWM outputs //////////////////
void configure_LED_PWM(void)
{
	struct tcc_config config_tcc;
	tcc_get_config_defaults(&config_tcc, TCC0);
	config_tcc.counter.period = 0xFFFF;
	config_tcc.compare.wave_generation = TCC_WAVE_GENERATION_SINGLE_SLOPE_PWM;
	config_tcc.compare.match[0] = 0;
	config_tcc.compare.match[1] = 0;
	config_tcc.pins.enable_wave_out_pin[0] = true;
	config_tcc.pins.enable_wave_out_pin[1] = true;
	// White Trackball LED*
	config_tcc.pins.wave_out_pin[0]        = PIN_PA14F_TCC0_WO4;
	// Green Trackball LED*
	config_tcc.pins.wave_out_pin[1]        = PIN_PA21F_TCC0_WO7;
	config_tcc.pins.wave_out_pin_mux[0]    = MUX_PA14F_TCC0_WO4;
	config_tcc.pins.wave_out_pin_mux[1]    = MUX_PA21F_TCC0_WO7;
	tcc_init(&tcc0, TCC0, &config_tcc);
	tcc_enable(&tcc0);

	tcc_get_config_defaults(&config_tcc, TCC1);
	config_tcc.counter.period = 0xFFFF;
	config_tcc.compare.wave_generation = TCC_WAVE_GENERATION_SINGLE_SLOPE_PWM;
	config_tcc.compare.match[0] = 0;
	config_tcc.compare.match[1] = 0;
	config_tcc.pins.enable_wave_out_pin[0] = true;
	config_tcc.pins.enable_wave_out_pin[1] = true;
	// Red Trackball LED*
	config_tcc.pins.wave_out_pin[0]        = PIN_PA07E_TCC1_WO1;
	// Blue Trackball LED*
	config_tcc.pins.wave_out_pin[1]        = PIN_PA08F_TCC1_WO2;
	config_tcc.pins.wave_out_pin_mux[0]    = MUX_PA07E_TCC1_WO1;
	config_tcc.pins.wave_out_pin_mux[1]    = MUX_PA08F_TCC1_WO2;
	tcc_init(&tcc0, TCC1, &config_tcc);
	tcc_enable(&tcc0);
}
///////////////////////////////////////////////////////////////////////////

// Configure the LED selection port as output
void configure_button_pins(void)
{
	struct port_config config_port_pin;
	port_get_config_defaults(&config_port_pin);
	config_port_pin.direction = PORT_PIN_DIR_INPUT;
	//Right Arrow Button
	port_pin_set_config(PIN_PA04, &config_port_pin);
	//Hall Up*
	port_pin_set_config(PIN_PA06, &config_port_pin);
	//Hall Down*
	port_pin_set_config(PIN_PA09, &config_port_pin);
	//Hall Left*
	port_pin_set_config(PIN_PA10, &config_port_pin);
	//Hall Right*
	port_pin_set_config(PIN_PA11, &config_port_pin);
	//Down Arrow Button
	port_pin_set_config(PIN_PA12, &config_port_pin);
	//Scroll Button
	port_pin_set_config(PIN_PA13, &config_port_pin);
	//Right Mouse Button
	port_pin_set_config(PIN_PA15, &config_port_pin);
	//Up Arrow Button
	port_pin_set_config(PIN_PA20, &config_port_pin);
	//Left Mouse Button
	port_pin_set_config(PIN_PB02, &config_port_pin);
	//Laser Button
	port_pin_set_config(PIN_PB03, &config_port_pin);
	//Left Arrow Button
	port_pin_set_config(PIN_PB09, &config_port_pin);
}


int main (void)
{
    /* Initialize system */
	system_init();
	//configure_LED_PWM();
	//configure_button_pins();
	
	if(!lipo_begin())
	{
		
	}
	lipo_setCapacity(Capacity);

	uint16_t soc = lipo_soc(FILTERED);
	uint16_t volts = lipo_voltage();
	int16_t current = lipo_current(AVG);
	uint16_t totalCapacity = lipo_capacity(FULL);
	uint16_t remainingCapacity = lipo_capacity(REMAIN);
	int16_t power = lipo_power();
	uint8_t health = lipo_soh(PERCENT);

	/*uint16_t timeout = 0;

	struct i2c_master_packet packet = {
		.address     = SLAVE_ADDRESS,
		.data_length = DATA_LENGTH,
		.data        = write_buffer,
		.ten_bit_address = false,
		.high_speed      = false,
		.hs_master_code  = 0x0,
	};

	while (i2c_master_write_packet_wait(&i2c_master_instance, &packet) !=
	STATUS_OK) {
		if (timeout++ == TIMEOUT) {
			break;
		}
	}
	packet.data = read_buffer;
	while (i2c_master_read_packet_wait(&i2c_master_instance, &packet) !=
	STATUS_OK) {
		if (timeout++ == TIMEOUT) {
			break;
		}
	}*/

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
		// The actual message is contained in the RFM_DATA array,
		// and is RFM_DATALEN bytes in size:
		  
		//for (byte i = 0; i < RFM_DATALEN; i++)
		RFM_DATALEN = RFM_DATALEN;
		// RFM_RSSI is the "Receive Signal Strength Indicator",
		// smaller numbers mean higher power.

		RFM_RSSI = RFM_RSSI;

		// Send an ACK if requested.
		// (You don't need this code if you're not using ACKs.)
		if (RFM_ACKRequested())
		{
			RFM_sendACK("", 0);
		}
	}
  }
}
