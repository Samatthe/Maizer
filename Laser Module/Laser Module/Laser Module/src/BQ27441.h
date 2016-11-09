#ifndef BQ27441_h
#define BQ27441_h

#include "BQ27441_Definitions.h"
#include "RFM69.h"

#define BQ72441_I2C_TIMEOUT 2000

// Parameters for the current() function, to specify which current to read
typedef enum {
	AVG,  // Average Current (DEFAULT)
	STBY, // Standby Current
	MAX   // Max Current
} current_measure;

// Parameters for the capacity() function, to specify which capacity to read
typedef enum {
	REMAIN,     // Remaining Capacity (DEFAULT)
	FULL,       // Full Capacity
	AVAIL,      // Available Capacity
	AVAIL_FULL, // Full Available Capacity
	REMAIN_F,   // Remaining Capacity Filtered
	REMAIN_UF,  // Remaining Capacity Unfiltered
	FULL_F,     // Full Capacity Filtered
	FULL_UF,    // Full Capacity Unfiltered
	DESIGN      // Design Capacity
} capacity_measure;

// Parameters for the soc() function
typedef enum {
	FILTERED,  // State of Charge Filtered (DEFAULT)
	UNFILTERED // State of Charge Unfiltered
} soc_measure;

// Parameters for the soh() function
typedef enum {
	PERCENT,  // State of Health Percentage (DEFAULT)
	SOH_STAT  // State of Health Status Bits
} soh_measure;

// Parameters for the temperature() function
typedef enum {
	BATTERY,      // Battery Temperature (DEFAULT)
	INTERNAL_TEMP // Internal IC Temperature
} temp_measure;

// Parameters for the setGPOUTFunction() funciton
typedef enum {
	SOC_INT, // Set GPOUT to SOC_INT functionality
	BAT_LOW  // Set GPOUT to BAT_LOW functionality
} gpout_function;


//////////////////////////////
// Initialization Functions //
//////////////////////////////
	
/**
	Initializes I2C and verifies communication with the BQ27441.
	Must be called before using any other functions.
		
	@return true if communication was successful.
*/
bool lipo_begin(void);
	
/**
	Configures the design capacity of the connected battery.
		
	@param capacity of battery (unsigned 16-bit value)
	@return true if capacity successfully set.
*/
bool lipo_setCapacity(uint16_t capacity);
	
/////////////////////////////
// Battery Characteristics //
/////////////////////////////
/**
	Reads and returns the battery voltage
		
	@return battery voltage in mV
*/
uint16_t lipo_voltage(void);
	
/**
	Reads and returns the specified current measurement
		
	@param current_measure enum specifying current value to be read
	@return specified current measurement in mA. >0 indicates charging.
*/
int16_t lipo_current(current_measure type); //type = AVG
	
/**
	Reads and returns the specified capacity measurement
		
	@param capacity_measure enum specifying capacity value to be read
	@return specified capacity measurement in mAh.
*/
uint16_t lipo_capacity(capacity_measure type); //type = REMAIN
	
/**
	Reads and returns measured average power
		
	@return average power in mAh. >0 indicates charging.
*/
int16_t lipo_power(void);
	
/**
	Reads and returns specified state of charge measurement
		
	@param soc_measure enum specifying filtered or unfiltered measurement
	@return specified state of charge measurement in %
*/
uint16_t lipo_soc(soc_measure type); //type = FILTERED
	
/**
	Reads and returns specified state of health measurement
		
	@param soh_measure enum specifying filtered or unfiltered measurement
	@return specified state of health measurement in %, or status bits
*/
uint8_t lipo_soh(soh_measure type); //type = PERCENT
	
/**
	Reads and returns specified temperature measurement
		
	@param temp_measure enum specifying internal or battery measurement
	@return specified temperature measurement in degrees C
*/
uint16_t temperature(temp_measure type); //type = BATTERY
	
////////////////////////////	
// GPOUT Control Commands //
////////////////////////////
/**
	Get GPOUT polarity setting (active-high or active-low)
		
	@return true if active-high, false if active-low
*/
bool GPOUTPolarity(void);
	
/**
	Set GPOUT polarity to active-high or active-low
		
	@param activeHigh is true if active-high, false if active-low
	@return true on success
*/
bool setGPOUTPolarity(bool activeHigh);
	
/**
	Get GPOUT function (BAT_LOW or SOC_INT)
		
	@return true if BAT_LOW or false if SOC_INT
*/
bool GPOUTFunction(void);
	
/**
	Set GPOUT function to BAT_LOW or SOC_INT
		
	@param function should be either BAT_LOW or SOC_INT
	@return true on success
*/
bool setGPOUTFunction(gpout_function function);
	
/**
	Get SOC1_Set Threshold - threshold to set the alert flag
		
	@return state of charge value between 0 and 100%
*/
uint8_t SOC1SetThreshold(void);
	
/**
	Get SOC1_Clear Threshold - threshold to clear the alert flag
		
	@return state of charge value between 0 and 100%
*/
uint8_t SOC1ClearThreshold(void);
	
/**
	Set the SOC1 set and clear thresholds to a percentage
		
	@param set and clear percentages between 0 and 100. clear > set.
	@return true on success
*/
bool setSOC1Thresholds(uint8_t set, uint8_t clear);
	
/**
	Get SOCF_Set Threshold - threshold to set the alert flag
		
	@return state of charge value between 0 and 100%
*/
uint8_t SOCFSetThreshold(void);
	
/**
	Get SOCF_Clear Threshold - threshold to clear the alert flag
		
	@return state of charge value between 0 and 100%
*/
uint8_t SOCFClearThreshold(void);
	
/**
	Set the SOCF set and clear thresholds to a percentage
		
	@param set and clear percentages between 0 and 100. clear > set.
	@return true on success
*/
bool setSOCFThresholds(uint8_t set, uint8_t clear);
	
/**
	Check if the SOC1 flag is set in flags()
		
	@return true if flag is set
*/
bool socFlag(void);
	
/**
	Check if the SOCF flag is set in flags()
		
	@return true if flag is set
*/
bool socfFlag(void);
	
/**
	Get the SOC_INT interval delta
		
	@return interval percentage value between 1 and 100
*/
uint8_t sociDelta(void);
	
/**
	Set the SOC_INT interval delta to a value between 1 and 100
		
	@param interval percentage value between 1 and 100
	@return true on success
*/
bool setSOCIDelta(uint8_t delta);
	
/**
	Pulse the GPOUT pin - must be in SOC_INT mode
		
	@return true on success
*/
bool pulseGPOUT(void);
	
//////////////////////////
// Control Sub-commands //
//////////////////////////
	
/**
	Read the device type - should be 0x0421
		
	@return 16-bit value read from DEVICE_TYPE subcommand
*/
uint16_t deviceType(void);
	
/**
	Enter configuration mode - set userControl if calling from an Arduino
	sketch and you want control over when to exitConfig.
		
	@param userControl is true if the Arduino sketch is handling entering 
	and exiting config mode (should be false in library calls).
	@return true on success
*/
bool enterConfig(bool userControl); //userControl = true
	
/**
	Exit configuration mode with the option to perform a resimulation
		
	@param resim is true if resimulation should be performed after exiting
	@return true on success
*/
bool exitConfig(bool resim); //resim = true
	
/**
	Read the flags() command
		
	@return 16-bit representation of flags() command register
*/
uint16_t flags(void);
	
/**
	Read the CONTROL_STATUS subcommand of control()
		
	@return 16-bit representation of CONTROL_STATUS subcommand
*/
uint16_t status(void);
	
uint8_t _deviceAddress;  // Stores the BQ27441-G1A's I2C address
bool _sealFlag; // Global to identify that IC was previously sealed
bool _userConfigControl; // Global to identify that user has control over 
	                        // entering/exiting config
	
/**
	Check if the BQ27441-G1A is sealed or not.
		
	@return true if the chip is sealed
*/
bool sealed(void);
	
/**
	Seal the BQ27441-G1A
		
	@return true on success
*/
bool seal(void);
	
/**
	UNseal the BQ27441-G1A
		
	@return true on success
*/
bool unseal(void);
		
/**
	Read the 16-bit opConfig register from extended data
		
	@return opConfig register contents
*/
uint16_t opConfig(void);
	
/**
	Write the 16-bit opConfig register in extended data
		
	@param New 16-bit value for opConfig
	@return true on success
*/	
bool writeOpConfig(uint16_t value);
	
/**
	Issue a soft-reset to the BQ27441-G1A
		
	@return true on success
*/	
bool softReset(void);
	
/**
	Read a 16-bit command word from the BQ27441-G1A
		
	@param subAddress is the command to be read from
	@return 16-bit value of the command's contents
*/	
uint16_t readWord(uint16_t subAddress);
	
/**
	Read a 16-bit subcommand() from the BQ27441-G1A's control()
		
	@param function is the subcommand of control() to be read
	@return 16-bit value of the subcommand's contents
*/	
uint16_t readControlWord(uint16_t function);
	
/**
	Execute a subcommand() from the BQ27441-G1A's control()
		
	@param function is the subcommand of control() to be executed
	@return true on success
*/	
bool executeControlWord(uint16_t function);
	
////////////////////////////
// Extended Data Commands //
////////////////////////////
/**
	Issue a BlockDataControl() command to enable BlockData access
		
	@return true on success
*/
bool blockDataControl(void);
	
/**
	Issue a DataClass() command to set the data class to be accessed
		
	@param id is the id number of the class
	@return true on success
*/
bool blockDataClass(uint8_t id);
	
/**
	Issue a DataBlock() command to set the data block to be accessed
		
	@param offset of the data block
	@return true on success
*/
bool blockDataOffset(uint8_t offset);
	
/**
	Read the current checksum using BlockDataCheckSum()
		
	@return true on success
*/
uint8_t blockDataChecksum(void);
	
/**
	Use BlockData() to read a byte from the loaded extended data
		
	@param offset of data block byte to be read
	@return true on success
*/
uint8_t readBlockData(uint8_t offset);
	
/**
	Use BlockData() to write a byte to an offset of the loaded data
		
	@param offset is the position of the byte to be written
		    data is the value to be written
	@return true on success
*/
bool writeBlockData(uint8_t offset, uint8_t data);
	
/**
	Read all 32 bytes of the loaded extended data and compute a 
	checksum based on the values.
		
	@return 8-bit checksum value calculated based on loaded data
*/
uint8_t computeBlockChecksum(void);
	
/**
	Use the BlockDataCheckSum() command to write a checksum value
		
	@param csum is the 8-bit checksum to be written
	@return true on success
*/
bool writeBlockChecksum(uint8_t csum);
	
/**
	Read a byte from extended data specifying a class ID and position offset
		
	@param classID is the id of the class to be read from
		    offset is the byte position of the byte to be read
	@return 8-bit value of specified data
*/
uint8_t readExtendedData(uint8_t classID, uint8_t offset);
	
/**
	Write a specified number of bytes to extended data specifying a 
	class ID, position offset.
		
	@param classID is the id of the class to be read from
		    offset is the byte position of the byte to be read
			data is the data buffer to be written
			len is the number of bytes to be written
	@return true on success
*/
bool writeExtendedData(uint8_t classID, uint8_t offset, uint8_t * data, uint8_t len);
	
/////////////////////////////////
// I2C Read and Write Routines //
/////////////////////////////////
	
/**
	Read a specified number of bytes over I2C at a given subAddress
		
	@param subAddress is the 8-bit address of the data to be read
		    dest is the data buffer to be written to
			count is the number of bytes to be read
	@return true on success
*/
int16_t i2cReadBytes(uint8_t subAddress, uint8_t * dest, uint8_t count);
	
/**
	Write a specified number of bytes over I2C to a given subAddress
		
	@param subAddress is the 8-bit address of the data to be written to
		    src is the data buffer to be written
			count is the number of bytes to be written
	@return true on success
*/
uint16_t i2cWriteBytes(uint8_t subAddress, uint8_t * src, uint8_t count);




//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/*#define DATA_LENGTH 10
static uint8_t write_buffer[DATA_LENGTH] = {
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
};
static uint8_t read_buffer[DATA_LENGTH];*/

struct i2c_master_module i2c_master_instance;
void configure_i2c_master(void);


void configure_i2c_master(void)
{
	/* Initialize config structure and software module. */
	struct i2c_master_config config_i2c_master;
	i2c_master_get_config_defaults(&config_i2c_master);
	/* Change buffer timeout to something longer. */
	config_i2c_master.buffer_timeout = 10000;
	/* Initialize and enable device with config. */
	i2c_master_init(&i2c_master_instance, SERCOM2, &config_i2c_master);
	i2c_master_enable(&i2c_master_instance);
}


uint8_t constrain(uint8_t val, uint8_t min, uint8_t max);

uint8_t constrain(uint8_t val, uint8_t min, uint8_t max)
{
	if(val <= min)
		return min;
	else if(val >= max)
		return max;
	else
		return val;
}


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





/*****************************************************************************
 ************************** Initialization Functions *************************
 *****************************************************************************/

// Initializes I2C and verifies communication with the BQ27441.
bool lipo_begin(void)
{
	uint16_t deviceID = 0;
	
	_userConfigControl = false;
	_sealFlag = false;
	_deviceAddress = BQ72441_I2C_ADDRESS;
	configure_i2c_master(); // Initialize I2C master
	
	deviceID = deviceType(); // Read deviceType from BQ27441
	
	if (deviceID == BQ27441_DEVICE_ID)
	{
		return true; // If device ID is valid, return true
	}
	
	return false; // Otherwise return false
}

// Configures the design capacity of the connected battery.
bool lipo_setCapacity(uint16_t capacity)
{
	// Write to STATE subclass (82) of BQ27441 extended memory.
	// Offset 0x0A (10)
	// Design capacity is a 2-byte piece of data - MSB first
	uint8_t capMSB = capacity >> 8;
	uint8_t capLSB = capacity & 0x00FF;
	uint8_t capacityData[2] = {capMSB, capLSB};
	return writeExtendedData(BQ27441_ID_STATE, 10, capacityData, 2);
}

/*****************************************************************************
 ********************** Battery Characteristics Functions ********************
 *****************************************************************************/

// Reads and returns the battery voltage
uint16_t lipo_voltage(void)
{
	return readWord(BQ27441_COMMAND_VOLTAGE);
}

// Reads and returns the specified current measurement
int16_t lipo_current(current_measure type)
{
	int16_t current = 0;
	switch (type)
	{
	case AVG:
		current = (int16_t) readWord(BQ27441_COMMAND_AVG_CURRENT);
		break;
	case STBY:
		current = (int16_t) readWord(BQ27441_COMMAND_STDBY_CURRENT);
		break;
	case MAX:
		current = (int16_t) readWord(BQ27441_COMMAND_MAX_CURRENT);
		break;
	}
	
	return current;
}

// Reads and returns the specified capacity measurement
uint16_t lipo_capacity(capacity_measure type)
{
	uint16_t capacity = 0;
	switch (type)
	{
	case REMAIN:
		return readWord(BQ27441_COMMAND_REM_CAPACITY);
		break;
	case FULL:
		return readWord(BQ27441_COMMAND_FULL_CAPACITY);
		break;
	case AVAIL:
		capacity = readWord(BQ27441_COMMAND_NOM_CAPACITY);
		break;
	case AVAIL_FULL:
		capacity = readWord(BQ27441_COMMAND_AVAIL_CAPACITY);
		break;
	case REMAIN_F: 
		capacity = readWord(BQ27441_COMMAND_REM_CAP_FIL);
		break;
	case REMAIN_UF:
		capacity = readWord(BQ27441_COMMAND_REM_CAP_UNFL);
		break;
	case FULL_F:
		capacity = readWord(BQ27441_COMMAND_FULL_CAP_FIL);
		break;
	case FULL_UF:
		capacity = readWord(BQ27441_COMMAND_FULL_CAP_UNFL);
		break;
	case DESIGN:
		capacity = readWord(BQ27441_EXTENDED_CAPACITY);
	}
	
	return capacity;
}

// Reads and returns measured average power
int16_t lipo_power(void)
{
	return (int16_t) readWord(BQ27441_COMMAND_AVG_POWER);
}

// Reads and returns specified state of charge measurement
uint16_t lipo_soc(soc_measure type)
{
	uint16_t socRet = 0;
	switch (type)
	{
	case FILTERED:
		socRet = readWord(BQ27441_COMMAND_SOC);
		break;
	case UNFILTERED:
		socRet = readWord(BQ27441_COMMAND_SOC_UNFL);
		break;
	}
	
	return socRet;
}

// Reads and returns specified state of health measurement
uint8_t lipo_soh(soh_measure type)
{
	uint16_t sohRaw = readWord(BQ27441_COMMAND_SOH);
	uint8_t sohStatus = sohRaw >> 8;
	uint8_t sohPercent = sohRaw & 0x00FF;
	
	if (type == PERCENT)	
		return sohPercent;
	else
		return sohStatus;
}

// Reads and returns specified temperature measurement
uint16_t temperature(temp_measure type)
{
	uint16_t temp = 0;
	switch (type)
	{
	case BATTERY:
		temp = readWord(BQ27441_COMMAND_TEMP);
		break;
	case INTERNAL_TEMP:
		temp = readWord(BQ27441_COMMAND_INT_TEMP);
		break;
	}
	return temp;
}

/*****************************************************************************
 ************************** GPOUT Control Functions **************************
 *****************************************************************************/
// Get GPOUT polarity setting (active-high or active-low)
bool GPOUTPolarity(void)
{
	uint16_t opConfigRegister = opConfig();
	
	return (opConfigRegister & BQ27441_OPCONFIG_GPIOPOL);
}

// Set GPOUT polarity to active-high or active-low
bool setGPOUTPolarity(bool activeHigh)
{
	uint16_t oldOpConfig = opConfig();
	
	// Check to see if we need to update opConfig:
	if ((activeHigh && (oldOpConfig & BQ27441_OPCONFIG_GPIOPOL)) ||
        (!activeHigh && !(oldOpConfig & BQ27441_OPCONFIG_GPIOPOL)))
		return true;
		
	uint16_t newOpConfig = oldOpConfig;
	if (activeHigh)
		newOpConfig |= BQ27441_OPCONFIG_GPIOPOL;
	else
		newOpConfig &= ~(BQ27441_OPCONFIG_GPIOPOL);
	
	return writeOpConfig(newOpConfig);	
}

// Get GPOUT function (BAT_LOW or SOC_INT)
bool GPOUTFunction(void)
{
	uint16_t opConfigRegister = opConfig();
	
	return (opConfigRegister & BQ27441_OPCONFIG_BATLOWEN);	
}

// Set GPOUT function to BAT_LOW or SOC_INT
bool setGPOUTFunction(gpout_function function)
{
	uint16_t oldOpConfig = opConfig();
	
	// Check to see if we need to update opConfig:
	if ((function && (oldOpConfig & BQ27441_OPCONFIG_BATLOWEN)) ||
        (!function && !(oldOpConfig & BQ27441_OPCONFIG_BATLOWEN)))
		return true;
	
	// Modify BATLOWN_EN bit of opConfig:
	uint16_t newOpConfig = oldOpConfig;
	if (function)
		newOpConfig |= BQ27441_OPCONFIG_BATLOWEN;
	else
		newOpConfig &= ~(BQ27441_OPCONFIG_BATLOWEN);

	// Write new opConfig
	return writeOpConfig(newOpConfig);	
}

// Get SOC1_Set Threshold - threshold to set the alert flag
uint8_t SOC1SetThreshold(void)
{
	return readExtendedData(BQ27441_ID_DISCHARGE, 0);
}

// Get SOC1_Clear Threshold - threshold to clear the alert flag
uint8_t SOC1ClearThreshold(void)
{
	return readExtendedData(BQ27441_ID_DISCHARGE, 1);	
}

// Set the SOC1 set and clear thresholds to a percentage
bool setSOC1Thresholds(uint8_t set, uint8_t clear)
{
	uint8_t thresholds[2];
	thresholds[0] = constrain(set, 0, 100);
	thresholds[1] = constrain(clear, 0, 100);
	return writeExtendedData(BQ27441_ID_DISCHARGE, 0, thresholds, 2);
}

// Get SOCF_Set Threshold - threshold to set the alert flag
uint8_t SOCFSetThreshold(void)
{
	return readExtendedData(BQ27441_ID_DISCHARGE, 2);
}

// Get SOCF_Clear Threshold - threshold to clear the alert flag
uint8_t SOCFClearThreshold(void)
{
	return readExtendedData(BQ27441_ID_DISCHARGE, 3);	
}

// Set the SOCF set and clear thresholds to a percentage
bool setSOCFThresholds(uint8_t set, uint8_t clear)
{
	uint8_t thresholds[2];
	thresholds[0] = constrain(set, 0, 100);
	thresholds[1] = constrain(clear, 0, 100);
	return writeExtendedData(BQ27441_ID_DISCHARGE, 2, thresholds, 2);
}

// Check if the SOC1 flag is set
bool socFlag(void)
{
	uint16_t flagState = flags();
	
	return flagState & BQ27441_FLAG_SOC1;
}

// Check if the SOCF flag is set
bool socfFlag(void)
{
	uint16_t flagState = flags();
	
	return flagState & BQ27441_FLAG_SOCF;
	
}

// Get the SOC_INT interval delta
uint8_t sociDelta(void)
{
	return readExtendedData(BQ27441_ID_STATE, 26);
}

// Set the SOC_INT interval delta to a value between 1 and 100
bool setSOCIDelta(uint8_t delta)
{
	uint8_t soci = constrain(delta, 0, 100);
	return writeExtendedData(BQ27441_ID_STATE, 26, &soci, 1);
}

// Pulse the GPOUT pin - must be in SOC_INT mode
bool pulseGPOUT(void)
{
	return executeControlWord(BQ27441_CONTROL_PULSE_SOC_INT);
}

/*****************************************************************************
 *************************** Control Sub-Commands ****************************
 *****************************************************************************/

// Read the device type - should be 0x0421
uint16_t deviceType(void)
{
	return readControlWord(BQ27441_CONTROL_DEVICE_TYPE);
}

// Enter configuration mode - set userControl if calling from an Arduino sketch
// and you want control over when to exitConfig
bool enterConfig(bool userControl)
{
	if (userControl) _userConfigControl = true;
	
	if (sealed())
	{
		_sealFlag = true;
		unseal(); // Must be unsealed before making changes
	}
	
	if (executeControlWord(BQ27441_CONTROL_SET_CFGUPDATE))
	{
		int16_t timeout = BQ72441_I2C_TIMEOUT;
		while ((timeout--) && (!(status() & BQ27441_FLAG_CFGUPMODE)))
		{
			uint32_t time = millis();
			while(millis()-time < 1)
			{
			 //Delay(1);
			}
		}
		
		if (timeout > 0)
			return true;
	}
	
	return false;
}

// Exit configuration mode with the option to perform a resimulation
bool exitConfig(bool resim)
{
	// There are two methods for exiting config mode:
	//    1. Execute the EXIT_CFGUPDATE command
	//    2. Execute the SOFT_RESET command
	// EXIT_CFGUPDATE exits config mode _without_ an OCV (open-circuit voltage)
	// measurement, and without resimulating to update unfiltered-SoC and SoC.
	// If a new OCV measurement or resimulation is desired, SOFT_RESET or
	// EXIT_RESIM should be used to exit config mode.
	if (resim)
	{
		if (softReset())
		{
			int16_t timeout = BQ72441_I2C_TIMEOUT;
			while ((timeout--) && ((flags() & BQ27441_FLAG_CFGUPMODE)))
			{
				uint32_t time = millis();
				while(millis()-time < 1)
				{
					//Delay(1);
				}
			}

			if (timeout > 0)
			{
				if (_sealFlag) seal(); // Seal back up if we IC was sealed coming in
				return true;
			}
		}
		return false;
	}
	else
	{
		return executeControlWord(BQ27441_CONTROL_EXIT_CFGUPDATE);
	}	
}

// Read the flags() command
uint16_t flags(void)
{
	return readWord(BQ27441_COMMAND_FLAGS);
}

// Read the CONTROL_STATUS subcommand of control()
uint16_t status(void)
{
	return readControlWord(BQ27441_CONTROL_STATUS);
}

/***************************** Private Functions *****************************/

// Check if the BQ27441-G1A is sealed or not.
bool sealed(void)
{
	uint16_t stat = status();
	return stat & BQ27441_STATUS_SS;
}

// Seal the BQ27441-G1A
bool seal(void)
{
	return readControlWord(BQ27441_CONTROL_SEALED);
}

// UNseal the BQ27441-G1A
bool unseal(void)
{
	// To unseal the BQ27441, write the key to the control
	// command. Then immediately write the same key to control again.
	if (readControlWord(BQ27441_UNSEAL_KEY))
	{
		return readControlWord(BQ27441_UNSEAL_KEY);
	}
	return false;
}

// Read the 16-bit opConfig register from extended data
uint16_t opConfig(void)
{
	return readWord(BQ27441_EXTENDED_OPCONFIG);
}

// Write the 16-bit opConfig register in extended data
bool writeOpConfig(uint16_t value)
{
	uint8_t opConfigMSB = value >> 8;
	uint8_t opConfigLSB = value & 0x00FF;
	uint8_t opConfigData[2] = {opConfigMSB, opConfigLSB};
	
	// OpConfig register location: BQ27441_ID_REGISTERS id, offset 0
	return writeExtendedData(BQ27441_ID_REGISTERS, 0, opConfigData, 2);	
}

// Issue a soft-reset to the BQ27441-G1A
bool softReset(void)
{
	return executeControlWord(BQ27441_CONTROL_SOFT_RESET);
}

// Read a 16-bit command word from the BQ27441-G1A
uint16_t readWord(uint16_t subAddress)
{
	uint8_t data[2];
	i2cReadBytes(subAddress, data, 2);
	return ((uint16_t) data[1] << 8) | data[0];
}

// Read a 16-bit subcommand() from the BQ27441-G1A's control()
uint16_t readControlWord(uint16_t function)
{
	uint8_t subCommandMSB = (function >> 8);
	uint8_t subCommandLSB = (function & 0x00FF);
	uint8_t command[2] = {subCommandLSB, subCommandMSB};
	uint8_t data[2] = {0, 0};
	
	i2cWriteBytes((uint8_t) 0, command, 2);
	
	if (i2cReadBytes((uint8_t) 0, data, 2))
	{
		return ((uint16_t)data[1] << 8) | data[0];
	}
	
	return false;
}

// Execute a subcommand() from the BQ27441-G1A's control()
bool executeControlWord(uint16_t function)
{
	uint8_t subCommandMSB = (function >> 8);
	uint8_t subCommandLSB = (function & 0x00FF);
	uint8_t command[2] = {subCommandLSB, subCommandMSB};
	uint8_t data[2] = {0, 0};
	
	if (i2cWriteBytes((uint8_t) 0, command, 2))
		return true;
	
	return false;
}

/*****************************************************************************
 ************************** Extended Data Commands ***************************
 *****************************************************************************/
 
// Issue a BlockDataControl() command to enable BlockData access
bool blockDataControl(void)
{
	uint8_t enableByte = 0x00;
	return i2cWriteBytes(BQ27441_EXTENDED_CONTROL, &enableByte, 1);
}

// Issue a DataClass() command to set the data class to be accessed
bool blockDataClass(uint8_t id)
{
	return i2cWriteBytes(BQ27441_EXTENDED_DATACLASS, &id, 1);
}

// Issue a DataBlock() command to set the data block to be accessed
bool blockDataOffset(uint8_t offset)
{
	return i2cWriteBytes(BQ27441_EXTENDED_DATABLOCK, &offset, 1);
}

// Read the current checksum using BlockDataCheckSum()
uint8_t blockDataChecksum(void)
{
	uint8_t csum;
	i2cReadBytes(BQ27441_EXTENDED_CHECKSUM, &csum, 1);
	return csum;
}

// Use BlockData() to read a byte from the loaded extended data
uint8_t readBlockData(uint8_t offset)
{
	uint8_t ret;
	uint8_t address = offset + BQ27441_EXTENDED_BLOCKDATA;
	i2cReadBytes(address, &ret, 1);
	return ret;
}

// Use BlockData() to write a byte to an offset of the loaded data
bool writeBlockData(uint8_t offset, uint8_t data)
{
	uint8_t address = offset + BQ27441_EXTENDED_BLOCKDATA;
	return i2cWriteBytes(address, &data, 1);
}

// Read all 32 bytes of the loaded extended data and compute a 
// checksum based on the values.
uint8_t computeBlockChecksum(void)
{
	uint8_t data[32];
	i2cReadBytes(BQ27441_EXTENDED_BLOCKDATA, data, 32);

	uint8_t csum = 0;
	for (int i=0; i<32; i++)
	{
		csum += data[i];
	}
	csum = 255 - csum;
	
	return csum;
}

// Use the BlockDataCheckSum() command to write a checksum value
bool writeBlockChecksum(uint8_t csum)
{
	return i2cWriteBytes(BQ27441_EXTENDED_CHECKSUM, &csum, 1);	
}

// Read a byte from extended data specifying a class ID and position offset
uint8_t readExtendedData(uint8_t classID, uint8_t offset)
{
	uint8_t retData = 0;
	if (!_userConfigControl) enterConfig(false);
		
	if (!blockDataControl()) // // enable block data memory control
		return false; // Return false if enable fails
	if (!blockDataClass(classID)) // Write class ID using DataBlockClass()
		return false;
	
	blockDataOffset(offset / 32); // Write 32-bit block offset (usually 0)
	
	computeBlockChecksum(); // Compute checksum going in
	uint8_t oldCsum = blockDataChecksum();
	/*for (int i=0; i<32; i++)
		Serial.print(String(readBlockData(i)) + " ");*/
	retData = readBlockData(offset % 32); // Read from offset (limit to 0-31)
	
	if (!_userConfigControl) exitConfig(true);
	
	return retData;
}

// Write a specified number of bytes to extended data specifying a 
// class ID, position offset.
bool writeExtendedData(uint8_t classID, uint8_t offset, uint8_t * data, uint8_t len)
{
	if (len > 32)
		return false;
	
	if (!_userConfigControl) enterConfig(false);
	
	if (!blockDataControl()) // // enable block data memory control
		return false; // Return false if enable fails
	if (!blockDataClass(classID)) // Write class ID using DataBlockClass()
		return false;
	
	blockDataOffset(offset / 32); // Write 32-bit block offset (usually 0)
	computeBlockChecksum(); // Compute checksum going in
	uint8_t oldCsum = blockDataChecksum();

	// Write data bytes:
	for (int i = 0; i < len; i++)
	{
		// Write to offset, mod 32 if offset is greater than 32
		// The blockDataOffset above sets the 32-bit block
		writeBlockData((offset % 32) + i, data[i]);
	}
	
	// Write new checksum using BlockDataChecksum (0x60)
	uint8_t newCsum = computeBlockChecksum(); // Compute the new checksum
	writeBlockChecksum(newCsum);

	if (!_userConfigControl) exitConfig(true);
	
	return true;
}

/*****************************************************************************
 ************************ I2C Read and Write Routines ************************
 *****************************************************************************/

// Read a specified number of bytes over I2C at a given subAddress
int16_t i2cReadBytes(uint8_t subAddress, uint8_t * dest, uint8_t count)
{
	int16_t timeout = BQ72441_I2C_TIMEOUT;	

	uint8_t write_buffer = subAddress;

	struct i2c_master_packet packet = {
		.address     = _deviceAddress,
		.data_length = 1,
		.data        = &write_buffer,
		.ten_bit_address = false,
		.high_speed      = false,
		.hs_master_code  = 0x0,
	};


	while (i2c_master_write_packet_wait(&i2c_master_instance, &packet) !=
	STATUS_OK) {
		if (timeout--) {
			break;
		}
	}
	
	timeout = BQ72441_I2C_TIMEOUT;
	packet.data = dest;
	packet.data_length = count;
	while (i2c_master_read_packet_wait(&i2c_master_instance, &packet) !=
	STATUS_OK) {
		if (timeout--) {
			break;
		}
	}

	/*Wire.requestFrom(_deviceAddress, count);
	while ((Wire.available() < count) && timeout--)
		delay(1);
	if (timeout)
	{
		for (int i=0; i<count; i++)
		{
			dest[i] = Wire.read();
		}
	}*/
	
	return timeout;
}

// Write a specified number of bytes over I2C to a given subAddress
uint16_t i2cWriteBytes(uint8_t subAddress, uint8_t * src, uint8_t count)
{
	int16_t timeout = BQ72441_I2C_TIMEOUT;
	
	uint8_t write_buffer = subAddress;

	struct i2c_master_packet packet = {
		.address     = _deviceAddress,
		.data_length = 1,
		.data        = &write_buffer,
		.ten_bit_address = false,
		.high_speed      = false,
		.hs_master_code  = 0x0,
	};

	while (i2c_master_write_packet_wait(&i2c_master_instance, &packet) !=
	STATUS_OK) {
		if (timeout--) {
			break;
		}
	}
	
	timeout = BQ72441_I2C_TIMEOUT;
	packet.data = src;
	packet.data_length = count;
	while (i2c_master_write_packet_wait(&i2c_master_instance, &packet) !=
	STATUS_OK) {
		if (timeout--) {
			break;
		}
	}

	/*Wire.beginTransmission(_deviceAddress);
	Wire.write(subAddress);
	for (int i=0; i<count; i++)
	{
		Wire.write(src[i]);
	}	
	Wire.endTransmission(true);*/
	
	return true;	
}
#endif
