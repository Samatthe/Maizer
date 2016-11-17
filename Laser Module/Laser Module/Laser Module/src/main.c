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
#define MYNODEID      3   // My node ID (0 to 255)
#define TONODEID      2   // Destination node ID (0 to 254, 255 = broadcast)

// RFM69 frequency:
#define FREQUENCY     RF69_915MHZ

// AES encryption:
#define ENCRYPT       true // Set to "true" to use encryption
#define ENCRYPTKEY    "TOPSECRETPASSWRD" // Use the same 16-byte key on all nodes

// Use ACKnowledge when sending messages:
#define USEACK        false

// Battery Capacity
#define Capacity 1200

//button to reg value map
//#define 
//#define
//#define 

// Initialization functions
void configure_LED_PWM(void);
struct tcc_module tcc0;
struct tcc_module tcc1;
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
	// Green Trackball LED*
	config_tcc.pins.wave_out_pin[0]        = PIN_PA21F_TCC0_WO7;
	// White Trackball LED*
	config_tcc.pins.wave_out_pin[1]        = PIN_PA14F_TCC0_WO4;
	config_tcc.pins.wave_out_pin_mux[0]    = MUX_PA21F_TCC0_WO7;
	config_tcc.pins.wave_out_pin_mux[1]    = MUX_PA14F_TCC0_WO4;
	tcc_init(&tcc0, TCC0, &config_tcc);
	tcc_enable(&tcc0);

	tcc_get_config_defaults(&config_tcc, TCC1);
	config_tcc.counter.period = 0xFFFF;
	config_tcc.compare.wave_generation = TCC_WAVE_GENERATION_SINGLE_SLOPE_PWM;
	config_tcc.compare.match[0] = 0;
	config_tcc.compare.match[1] = 0;
	config_tcc.pins.enable_wave_out_pin[0] = true;
	config_tcc.pins.enable_wave_out_pin[1] = true;
	// Blue Trackball LED*
	config_tcc.pins.wave_out_pin[0]        = PIN_PA08F_TCC1_WO2;
	// Red Trackball LED*
	config_tcc.pins.wave_out_pin[1]        = PIN_PA07E_TCC1_WO1;
	config_tcc.pins.wave_out_pin_mux[0]    = MUX_PA08F_TCC1_WO2;
	config_tcc.pins.wave_out_pin_mux[1]    = MUX_PA07E_TCC1_WO1;
	tcc_init(&tcc1, TCC1, &config_tcc);
	tcc_enable(&tcc1);
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
	configure_LED_PWM();
	//configure_button_pins();
	
	/*if(!lipo_begin())
	{
		
	}
	lipo_setCapacity(Capacity);

	uint16_t soc = lipo_soc(FILTERED);
	uint16_t volts = lipo_voltage();
	int16_t current = lipo_current(AVG);
	uint16_t totalCapacity = lipo_capacity(FULL);
	uint16_t remainingCapacity = lipo_capacity(REMAIN);
	int16_t power = lipo_power();
	uint8_t health = lipo_soh(PERCENT);*/

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
	RFM_setHighPower(true);
	if (ENCRYPT)
		RFM_encrypt(ENCRYPTKEY);


	int sendlength = 3; //number can be increased 
	int index = 0;
	char sendbuffer[16];
	
	while(1) //busy loop
	//sends data after receiving a request message from the dongle
	//sends X axis byte, Y axis byte, button byte
	{
		/* WHITE */
		//tcc_set_compare_value(&tcc0, (enum tcc_match_capture_channel) (0), 0xFFFF);
		/* GREEN */
		//tcc_set_compare_value(&tcc0, (enum tcc_match_capture_channel) (1), 0xFFFF);
		/* BLUE */
		tcc_set_compare_value(&tcc1, (enum tcc_match_capture_channel) (0), 0xFFFF);
		/* RED */
		//tcc_set_compare_value(&tcc1, (enum tcc_match_capture_channel) (1), 0xFFFF);

	//check if the RFM69 receives a  packet
	//only send info when a packet is received from dongle module
	if (RFM_receiveDone()) // Got one!
	{
		// The actual message is contained in the RFM_DATA array,
		// and is RFM_DATALEN bytes in size:
		  
		//for (byte i = 0; i < RFM_DATALEN; i++)
		RFM_DATALEN = RFM_DATALEN;
		// RFM_RSSI is the "Receive Signal Strength Indicator",
		// smaller numbers mean higher power.

		RFM_RSSI = RFM_RSSI;
		
		//port_pin_get_input_level();
		//Send data packets
		sendbuffer[0] = 0xFF; // x axis byte
		sendbuffer[1] = 0xFF; // y axis byte
		sendbuffer[2] = 0xFF; // button byte -- order is: up down left right left_click right_click middle_click laser_on?
		
		
		RFM_send(TONODEID, sendbuffer, sendlength, false);
	}
  }
}
