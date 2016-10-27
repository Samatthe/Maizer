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

///////////////////////// EXT INT ////////////////
void configure_extint_channel(void)
{
	struct extint_chan_conf config_extint_chan;
	extint_chan_get_config_defaults(&config_extint_chan);
	config_extint_chan.gpio_pin           = BUTTON_0_EIC_PIN;
	config_extint_chan.gpio_pin_mux       = BUTTON_0_EIC_MUX;
	config_extint_chan.gpio_pin_pull      = EXTINT_PULL_UP;
	config_extint_chan.detection_criteria = EXTINT_DETECT_BOTH;
	extint_chan_set_config(BUTTON_0_EIC_LINE, &config_extint_chan);
}
void configure_extint_callbacks(void)
{
	extint_register_callback(extint_detection_callback,
	BUTTON_0_EIC_LINE,
	EXTINT_CALLBACK_TYPE_DETECT);
	extint_chan_enable_callback(BUTTON_0_EIC_LINE,
	EXTINT_CALLBACK_TYPE_DETECT);
}
void extint_detection_callback(void)
{
	bool pin_state = port_pin_get_input_level(BUTTON_0_PIN);
	port_pin_set_output_level(LED_0_PIN, pin_state);
}
///////////////////////////////////////////////////

////////////////////////// SPI ////////////////////
static uint8_t buffer[BUF_LENGTH] = {
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
	0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13
};
#define BUF_LENGTH 20
#define SLAVE_SELECT_PIN EXT1_PIN_SPI_SS_0
struct spi_module spi_master_instance;
struct spi_slave_inst slave;

void configure_spi_master(void)
{
	struct spi_config config_spi_master;
	struct spi_slave_inst_config slave_dev_config;
	/* Configure and initialize software device instance of peripheral slave */
	spi_slave_inst_get_config_defaults(&slave_dev_config);
	slave_dev_config.ss_pin = SLAVE_SELECT_PIN;
	spi_attach_slave(&slave, &slave_dev_config);
	/* Configure, initialize and enable SERCOM SPI module */
	spi_get_config_defaults(&config_spi_master);
	config_spi_master.mux_setting = EXT1_SPI_SERCOM_MUX_SETTING;
	/* Configure pad 0 for data in */
	config_spi_master.pinmux_pad0 = EXT1_SPI_SERCOM_PINMUX_PAD0;
	/* Configure pad 1 as unused */
	config_spi_master.pinmux_pad1 = PINMUX_UNUSED;
	/* Configure pad 2 for data out */
	config_spi_master.pinmux_pad2 = EXT1_SPI_SERCOM_PINMUX_PAD2;
	/* Configure pad 3 for SCK */
	config_spi_master.pinmux_pad3 = EXT1_SPI_SERCOM_PINMUX_PAD3;
	spi_init(&spi_master_instance, EXT1_SPI_MODULE, &config_spi_master);
	spi_enable(&spi_master_instance);
}

void configure_spi_master_callbacks(void)
{
	spi_register_callback(&spi_master_instance, callback_spi_master,
	SPI_CALLBACK_BUFFER_TRANSMITTED);
	spi_enable_callback(&spi_master_instance, SPI_CALLBACK_BUFFER_TRANSMITTED);
}

volatile bool transfer_complete_spi_master = false;

static void callback_spi_master(const struct spi_module *const module)
{
	transfer_complete_spi_master = true;
}
///////////////////////////////////////////////////////////////////////////////



int main (void)
{
    /* Initialize system */
	system_init();
	configure_spi_master();
	configure_spi_master_callbacks();

    configure_extint_channel();
    configure_extint_callbacks();
    system_interrupt_enable_global();

    spi_select_slave(&spi_master_instance, &slave, true);
    spi_write_buffer_job(&spi_master_instance, buffer, BUF_LENGTH);
    while (!transfer_complete_spi_master) {
	    /* Wait for write complete */
    }
    spi_select_slave(&spi_master_instance, &slave, false);
	while (true) {
		
	}
}
