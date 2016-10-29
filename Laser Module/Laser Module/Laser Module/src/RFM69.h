// **********************************************************************************
// Driver definition for HopeRF RFM69W/RFM69HW/RFM69CW/RFM69HCW, Semtech SX1231/1231H
// **********************************************************************************
// Copyright Felix Rusu (2014), felix@lowpowerlab.com
// http://lowpowerlab.com/
// **********************************************************************************
// License
// **********************************************************************************
// This program is free software; you can redistribute it 
// and/or modify it under the terms of the GNU General    
// Public License as published by the Free Software       
// Foundation; either version 3 of the License, or        
// (at your option) any later version.                    
//                                                        
// This program is distributed in the hope that it will   
// be useful, but WITHOUT ANY WARRANTY; without even the  
// implied warranty of MERCHANTABILITY or FITNESS FOR A   
// PARTICULAR PURPOSE. See the GNU General Public        
// License for more details.                              
//                                                        
// You should have received a copy of the GNU General    
// Public License along with this program.
// If not, see <http://www.gnu.org/licenses/>.
//                                                        
// Licence can be viewed at                               
// http://www.gnu.org/licenses/gpl-3.0.txt
//
// Please maintain this license information along with authorship
// and copyright notices in any redistribution of this code
// **********************************************************************************
#include <asf.h>
#include "RFM69registers.h"

#define RF69_MAX_DATA_LEN       61 // to take advantage of the built in AES/CRC we want to limit the frame size to the internal FIFO size (66 bytes - 3 bytes overhead - 2 bytes crc)


#define CSMA_LIMIT              -90 // upper RX signal sensitivity threshold in dBm for carrier sense access
#define RF69_MODE_SLEEP         0 // XTAL OFF
#define RF69_MODE_STANDBY       1 // XTAL ON
#define RF69_MODE_SYNTH         2 // PLL ON
#define RF69_MODE_RX            3 // RX MODE
#define RF69_MODE_TX            4 // TX MODE

// available frequency bands
#define RF69_315MHZ            31
#define RF69_433MHZ            43
#define RF69_868MHZ            86
#define RF69_915MHZ            91

#define null                  0
#define COURSE_TEMP_COEF    -90
#define RF69_BROADCAST_ADDR 255
#define RF69_CSMA_LIMIT_MS 1000
#define RF69_TX_LIMIT_MS   1000
#define RF69_FSTEP  61.03515625 // == FXOSC / 2^19 = 32MHz / 2^19 (p13 in datasheet)

// TWS: define CTLbyte bits
#define RFM69_CTL_SENDACK   0x80
#define RFM69_CTL_REQACK    0x40

static volatile uint8_t RFM_DATA[RF69_MAX_DATA_LEN]; // recv/xmit buf, including header & crc bytes
static volatile uint8_t RFM_DATALEN;
static volatile uint8_t RFM_SENDERID;
static volatile uint8_t TARGETID; // should match _address
static volatile uint8_t PAYLOADLEN;
static volatile uint8_t ACK_REQUESTED;
static volatile uint8_t ACK_RECEIVED; // should be polled immediately after sending a packet with ACK request
static volatile int16_t RFM_RSSI; // most accurate RSSI during reception (closest to the reception)
static volatile uint8_t _mode; // should be protected?

RFM69(uint8_t slaveSelectPin, uint8_t interruptPin, bool isRFM69HW, uint8_t interruptNum=RF69_IRQ_NUM) {
    _slaveSelectPin = ;
    _interruptPin = ;
    _interruptNum = ;
    _mode = RF69_MODE_STANDBY;
    _promiscuousMode = false;
    _powerLevel = 31;
    _isRFM69HW = false;
}

bool RFM_initialize(uint8_t freqBand, uint8_t ID, uint8_t networkID=1);
void setAddress(uint8_t addr);
void setNetwork(uint8_t networkID);
bool canSend(void);
void RFM_send(uint8_t toAddress, const void* buffer, uint8_t bufferSize, bool requestACK=false);
bool RFM_sendWithRetry(uint8_t toAddress, const void* buffer, uint8_t bufferSize, uint8_t retries=2, uint8_t retryWaitTime=40); // 40ms roundtrip req for 61byte packets
bool RFM_receiveDone(void);
bool ACKReceived(uint8_t fromNodeID);
bool RFM_ACKRequested(void);
void RFM_sendACK(const void* buffer = "", uint8_t bufferSize=0);
uint32_t getFrequency(void);
void setFrequency(uint32_t freqHz);
void encrypt(const char* key);
void setCS(uint8_t newSPISlaveSelect);
int16_t readRSSI(bool forceTrigger=false);
void promiscuous(bool onOff=true);
void RFM_setHighPower(bool onOFF=true); // has to be called after RFM_initialize() for RFM69HW
void setPowerLevel(uint8_t level); // reduce/increase transmit power level
void sleep(void);
uint8_t readTemperature(uint8_t calFactor=0); // get CMOS temperature (8bit)
void rcCalibration(void); // calibrate the internal RC oscillator for use in wide temperature variations - see datasheet section [4.3.5. RC Timer Accuracy]

// allow hacking registers by making these public
uint8_t readReg(uint8_t addr);
void writeReg(uint8_t addr, uint8_t val);

static void isr0(void);
void interruptHandler(void);
void interruptHook(uint8_t CTLbyte) {};
static volatile bool _inISR;
void sendFrame(uint8_t toAddress, const void* buffer, uint8_t size, bool requestACK=false, bool RFM_sendACK=false);

static RFM69* selfPointer;
uint8_t _slaveSelectPin;
uint8_t _interruptPin;
uint8_t _interruptNum;
uint8_t _address;
bool _promiscuousMode;
uint8_t _powerLevel;
bool _isRFM69HW;

void receiveBegin(void);
void setMode(uint8_t mode);
void setHighPowerRegs(bool onOff);
void select(void);
void unselect(void);
inline void maybeInterrupts(void);




///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////// EXT INT ////////////////
void configure_extint_channel(void)
{
	struct extint_chan_conf config_extint_chan;
	extint_chan_get_config_defaults(&config_extint_chan);
	config_extint_chan.gpio_pin           = PIN_PA27A_EIC_EXTINT15;
	config_extint_chan.gpio_pin_mux       = MUX_PA27A_EIC_EXTINT15;
	config_extint_chan.gpio_pin_pull      = EXTINT_PULL_UP;
	config_extint_chan.detection_criteria = EXTINT_DETECT_BOTH;
	extint_chan_set_config(15, &config_extint_chan);
}
void configure_extint_callbacks(void)
{
	extint_register_callback(extint_detection_callback, 15, EXTINT_CALLBACK_TYPE_DETECT);
	extint_chan_enable_callback(15, EXTINT_CALLBACK_TYPE_DETECT);
}
///////////////////////////////////////////////////////////////////////////////

////////////////////////// SPI ////////////////////
static uint8_t buffer[BUF_LENGTH] = {
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
	0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13
};
#define BUF_LENGTH 20
#define SLAVE_SELECT_PIN PIN_PA18
struct spi_module spi_master_instance;
struct spi_slave_inst slave;

void configure_RFM69_spi(void)
{
	struct spi_config config_spi_master;
	struct spi_slave_inst_config slave_dev_config;
	/* Configure and initialize software device instance of peripheral slave */
	spi_slave_inst_get_config_defaults(&slave_dev_config);
	slave_dev_config.ss_pin = SLAVE_SELECT_PIN;
	spi_attach_slave(&slave, &slave_dev_config);
	/* Configure, initialize and enable SERCOM SPI module */
	spi_get_config_defaults(&config_spi_master);
	/* Configure pad 0 for MOSI */
	/* Configure pad 1 for SCK */
	/* Configure pad 2 for SS (Unused) */
	/* Configure pad 3 for MISO */
	config_spi_master.mux_setting = SPI_SIGNAL_MUX_SETTING_D;
	/* Configure pins used for SPI */
	config_spi_master.pinmux_pad0 = PINMUX_PA16C_SERCOM1_PAD0;
	config_spi_master.pinmux_pad1 = PINMUX_PA17C_SERCOM1_PAD1;
	config_spi_master.pinmux_pad2 = PINMUX_UNUSED;
	config_spi_master.pinmux_pad3 = PINMUX_PA19C_SERCOM1_PAD3;
	config_spi_master.data_order = SPI_DATA_ORDER_MSB;
	config_spi_master.transfer_mode = SPI_TRANSFER_MODE_0;
	spi_init(&spi_master_instance, SERCOM1, &config_spi_master);
	//spi_set_baudrate(&spi_master_instance, 9600);
	spi_enable(&spi_master_instance);

	spi_select_slave(&spi_master_instance, &slave, false);
}

void configure_spi_master_callbacks(void)
{
	spi_register_callback(&spi_master_instance, callback_spi_master,
	SPI_CALLBACK_BUFFER_RECEIVED);
	spi_enable_callback(&spi_master_instance, SPI_CALLBACK_BUFFER_TRANSMITTED);
}
///////////////////////////////////////////////////////////////////////////////

/* SYSTEM_CLOCK_SOURCE_OSC32K configuration - Internal 32KHz oscillator */
#  define CONF_CLOCK_OSC32K_ENABLE                true
#  define CONF_CLOCK_OSC32K_STARTUP_TIME          SYSTEM_OSC32K_STARTUP_130
#  define CONF_CLOCK_OSC32K_ENABLE_1KHZ_OUTPUT    true
#  define CONF_CLOCK_OSC32K_ENABLE_32KHZ_OUTPUT   true
#  define CONF_CLOCK_OSC32K_ON_DEMAND             true
#  define CONF_CLOCK_OSC32K_RUN_IN_STANDBY        false

/* Configure GCLK generator 2 (RTC) */
#  define CONF_CLOCK_GCLK_2_ENABLE                true
#  define CONF_CLOCK_GCLK_2_RUN_IN_STANDBY        false
#  define CONF_CLOCK_GCLK_2_CLOCK_SOURCE          SYSTEM_CLOCK_SOURCE_OSC32K
#  define CONF_CLOCK_GCLK_2_PRESCALER             32
#  define CONF_CLOCK_GCLK_2_OUTPUT_ENABLE         false

struct rtc_module rtc_instance;

////////////////////// RTC for millis() ///////////////////////////////////////
void configure_rtc_count(void)
{
	struct rtc_count_config config_rtc_count;
	rtc_count_get_config_defaults(&config_rtc_count);
	config_rtc_count.prescaler           = RTC_COUNT_PRESCALER_DIV_1;
	config_rtc_count.mode                = RTC_COUNT_MODE_16BIT;
	config_rtc_count.continuously_update = true;
	rtc_count_init(&rtc_instance, RTC, &config_rtc_count);
	rtc_count_enable(&rtc_instance);
}
//////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





#include <RFM69registers.h>

volatile uint8_t RFM_DATA[RF69_MAX_DATA_LEN];
volatile uint8_t _mode;        // current transceiver state
volatile uint8_t RFM_DATALEN;
volatile uint8_t RFM_SENDERID;
volatile uint8_t TARGETID;     // should match _address
volatile uint8_t PAYLOADLEN;
volatile uint8_t ACK_REQUESTED;
volatile uint8_t ACK_RECEIVED; // should be polled immediately after sending a packet with ACK request
volatile int16_t RFM_RSSI;          // most accurate RSSI during reception (closest to the reception)
volatile bool _inISR;
RFM69* selfPointer;

bool RFM_initialize(uint8_t freqBand, uint8_t nodeID, uint8_t networkID)
{
  const uint8_t CONFIG[][2] =
  {
    /* 0x01 */ { REG_OPMODE, RF_OPMODE_SEQUENCER_ON | RF_OPMODE_LISTEN_OFF | RF_OPMODE_STANDBY },
    /* 0x02 */ { REG_DATAMODUL, RF_DATAMODUL_DATAMODE_PACKET | RF_DATAMODUL_MODULATIONTYPE_FSK | RF_DATAMODUL_MODULATIONSHAPING_00 }, // no shaping
    /* 0x03 */ { REG_BITRATEMSB, RF_BITRATEMSB_55555}, // default: 4.8 KBPS
    /* 0x04 */ { REG_BITRATELSB, RF_BITRATELSB_55555},
    /* 0x05 */ { REG_FDEVMSB, RF_FDEVMSB_50000}, // default: 5KHz, (FDEV + BitRate / 2 <= 500KHz)
    /* 0x06 */ { REG_FDEVLSB, RF_FDEVLSB_50000},

    /* 0x07 */ { REG_FRFMSB, (uint8_t) (freqBand==RF69_315MHZ ? RF_FRFMSB_315 : (freqBand==RF69_433MHZ ? RF_FRFMSB_433 : (freqBand==RF69_868MHZ ? RF_FRFMSB_868 : RF_FRFMSB_915))) },
    /* 0x08 */ { REG_FRFMID, (uint8_t) (freqBand==RF69_315MHZ ? RF_FRFMID_315 : (freqBand==RF69_433MHZ ? RF_FRFMID_433 : (freqBand==RF69_868MHZ ? RF_FRFMID_868 : RF_FRFMID_915))) },
    /* 0x09 */ { REG_FRFLSB, (uint8_t) (freqBand==RF69_315MHZ ? RF_FRFLSB_315 : (freqBand==RF69_433MHZ ? RF_FRFLSB_433 : (freqBand==RF69_868MHZ ? RF_FRFLSB_868 : RF_FRFLSB_915))) },

    // looks like PA1 and PA2 are not implemented on RFM69W, hence the max output power is 13dBm
    // +17dBm and +20dBm are possible on RFM69HW
    // +13dBm formula: Pout = -18 + OutputPower (with PA0 or PA1**)
    // +17dBm formula: Pout = -14 + OutputPower (with PA1 and PA2)**
    // +20dBm formula: Pout = -11 + OutputPower (with PA1 and PA2)** and high power PA settings (section 3.3.7 in datasheet)
    ///* 0x11 */ { REG_PALEVEL, RF_PALEVEL_PA0_ON | RF_PALEVEL_PA1_OFF | RF_PALEVEL_PA2_OFF | RF_PALEVEL_OUTPUTPOWER_11111},
    ///* 0x13 */ { REG_OCP, RF_OCP_ON | RF_OCP_TRIM_95 }, // over current protection (default is 95mA)

    // RXBW defaults are { REG_RXBW, RF_RXBW_DCCFREQ_010 | RF_RXBW_MANT_24 | RF_RXBW_EXP_5} (RxBw: 10.4KHz)
    /* 0x19 */ { REG_RXBW, RF_RXBW_DCCFREQ_010 | RF_RXBW_MANT_16 | RF_RXBW_EXP_2 }, // (BitRate < 2 * RxBw)
    //for BR-19200: /* 0x19 */ { REG_RXBW, RF_RXBW_DCCFREQ_010 | RF_RXBW_MANT_24 | RF_RXBW_EXP_3 },
    /* 0x25 */ { REG_DIOMAPPING1, RF_DIOMAPPING1_DIO0_01 }, // DIO0 is the only IRQ we're using
    /* 0x26 */ { REG_DIOMAPPING2, RF_DIOMAPPING2_CLKOUT_OFF }, // DIO5 ClkOut disable for power saving
    /* 0x28 */ { REG_IRQFLAGS2, RF_IRQFLAGS2_FIFOOVERRUN }, // writing to this bit ensures that the FIFO & status flags are reset
    /* 0x29 */ { REG_RSSITHRESH, 220 }, // must be set to dBm = (-Sensitivity / 2), default is 0xE4 = 228 so -114dBm
    ///* 0x2D */ { REG_PREAMBLELSB, RF_PREAMBLESIZE_LSB_VALUE } // default 3 preamble bytes 0xAAAAAA
    /* 0x2E */ { REG_SYNCCONFIG, RF_SYNC_ON | RF_SYNC_FIFOFILL_AUTO | RF_SYNC_SIZE_2 | RF_SYNC_TOL_0 },
    /* 0x2F */ { REG_SYNCVALUE1, 0x2D },      // attempt to make this compatible with sync1 byte of RFM12B lib
    /* 0x30 */ { REG_SYNCVALUE2, networkID }, // NETWORK ID
    /* 0x37 */ { REG_PACKETCONFIG1, RF_PACKET1_FORMAT_VARIABLE | RF_PACKET1_DCFREE_OFF | RF_PACKET1_CRC_ON | RF_PACKET1_CRCAUTOCLEAR_ON | RF_PACKET1_ADRSFILTERING_OFF },
    /* 0x38 */ { REG_PAYLOADLENGTH, 66 }, // in variable length mode: the max frame size, not used in TX
    ///* 0x39 */ { REG_NODEADRS, nodeID }, // turned off because we're not using address filtering
    /* 0x3C */ { REG_FIFOTHRESH, RF_FIFOTHRESH_TXSTART_FIFONOTEMPTY | RF_FIFOTHRESH_VALUE }, // TX on FIFO not empty
    /* 0x3D */ { REG_PACKETCONFIG2, RF_PACKET2_RXRESTARTDELAY_2BITS | RF_PACKET2_AUTORXRESTART_ON | RF_PACKET2_AES_OFF }, // RXRESTARTDELAY must match transmitter PA ramp-down time (bitrate dependent)
    //for BR-19200: /* 0x3D */ { REG_PACKETCONFIG2, RF_PACKET2_RXRESTARTDELAY_NONE | RF_PACKET2_AUTORXRESTART_ON | RF_PACKET2_AES_OFF }, // RXRESTARTDELAY must match transmitter PA ramp-down time (bitrate dependent)
    /* 0x6F */ { REG_TESTDAGC, RF_DAGC_IMPROVED_LOWBETA0 }, // run DAGC continuously in RX mode for Fading Margin Improvement, recommended default for AfcLowBetaOn=0
    {255, 0}
  };

  //digitalWrite(_slaveSelectPin, HIGH); // CHANGE //
  //pinMode(_slaveSelectPin, OUTPUT); // CHANGE //
  //SPI.begin(); // CHANGE //

  configure_RFM69_spi();

  unsigned long start = millis(); // CHANGE // 
  uint8_t timeout = 50;
  do writeReg(REG_SYNCVALUE1, 0xAA); while (readReg(REG_SYNCVALUE1) != 0xaa && millis()-start < timeout); // CHANGE // 
  start = millis(); // CHANGE // 
  do writeReg(REG_SYNCVALUE1, 0x55); while (readReg(REG_SYNCVALUE1) != 0x55 && millis()-start < timeout); // CHANGE // 

  for (uint8_t i = 0; CONFIG[i][0] != 255; i++)
    writeReg(CONFIG[i][0], CONFIG[i][1]);

  // Encryption is persistent between resets and can trip you up during debugging.
  // Disable it during initialization so we always start from a known state.
  encrypt(0);

  RFM_setHighPower(_isRFM69HW); // called regardless if it's a RFM69W or RFM69HW
  setMode(RF69_MODE_STANDBY);
  start = get_timer();
  while (((readReg(REG_IRQFLAGS1) & RF_IRQFLAGS1_MODEREADY) == 0x00) && millis()-start < timeout); // wait for ModeReady  // CHANGE //
  if (millis()-start >= timeout) // CHANGE //
    return false;
  _inISR = false;

  configure_extint_callbacks(); //attachInterrupt(_interruptNum, isr0, RISING); // CHANGE //
  configure_rtc_count(); // Configure the RTC module for millis()

  _address = nodeID;
  return true;
}

// return the frequency (in Hz)
uint32_t getFrequency()
{
  return RF69_FSTEP * (((uint32_t) readReg(REG_FRFMSB) << 16) + ((uint16_t) readReg(REG_FRFMID) << 8) + readReg(REG_FRFLSB));
}

// set the frequency (in Hz)
void setFrequency(uint32_t freqHz)
{
  uint8_t oldMode = _mode;
  if (oldMode == RF69_MODE_TX) {
    setMode(RF69_MODE_RX);
  }
  freqHz /= RF69_FSTEP; // divide down by FSTEP to get FRF
  writeReg(REG_FRFMSB, freqHz >> 16);
  writeReg(REG_FRFMID, freqHz >> 8);
  writeReg(REG_FRFLSB, freqHz);
  if (oldMode == RF69_MODE_RX) {
    setMode(RF69_MODE_SYNTH);
  }
  setMode(oldMode);
}

void setMode(uint8_t newMode)
{
  if (newMode == _mode)
    return;

  switch (newMode) {
    case RF69_MODE_TX:
      writeReg(REG_OPMODE, (readReg(REG_OPMODE) & 0xE3) | RF_OPMODE_TRANSMITTER);
      if (_isRFM69HW) setHighPowerRegs(true);
      break;
    case RF69_MODE_RX:
      writeReg(REG_OPMODE, (readReg(REG_OPMODE) & 0xE3) | RF_OPMODE_RECEIVER);
      if (_isRFM69HW) setHighPowerRegs(false);
      break;
    case RF69_MODE_SYNTH:
      writeReg(REG_OPMODE, (readReg(REG_OPMODE) & 0xE3) | RF_OPMODE_SYNTHESIZER);
      break;
    case RF69_MODE_STANDBY:
      writeReg(REG_OPMODE, (readReg(REG_OPMODE) & 0xE3) | RF_OPMODE_STANDBY);
      break;
    case RF69_MODE_SLEEP:
      writeReg(REG_OPMODE, (readReg(REG_OPMODE) & 0xE3) | RF_OPMODE_SLEEP);
      break;
    default:
      return;
  }

  // we are using packet mode, so this check is not really needed
  // but waiting for mode ready is necessary when going from sleep because the FIFO may not be immediately available from previous mode
  while (_mode == RF69_MODE_SLEEP && (readReg(REG_IRQFLAGS1) & RF_IRQFLAGS1_MODEREADY) == 0x00); // wait for ModeReady

  _mode = newMode;
}

//put transceiver in sleep mode to save battery - to wake or resume receiving just call RFM_receiveDone()
void sleep() {
  setMode(RF69_MODE_SLEEP);
}

//set this node's address
void setAddress(uint8_t addr)
{
  _address = addr;
  writeReg(REG_NODEADRS, _address);
}

//set this node's network id
void setNetwork(uint8_t networkID)
{
  writeReg(REG_SYNCVALUE2, networkID);
}

// set *transmit/TX* output power: 0=min, 31=max
// this results in a "weaker" transmitted signal, and directly results in a lower RSSI at the receiver
// the power configurations are explained in the SX1231H datasheet (Table 10 on p21; RegPaLevel p66): http://www.semtech.com/images/datasheet/sx1231h.pdf
// valid powerLevel parameter values are 0-31 and result in a directly proportional effect on the output/transmission power
// this function implements 2 modes as follows:
//       - for RFM69W the range is from 0-31 [-18dBm to 13dBm] (PA0 only on RFIO pin)
//       - for RFM69HW the range is from 0-31 [5dBm to 20dBm]  (PA1 & PA2 on PA_BOOST pin & high Power PA settings - see section 3.3.7 in datasheet, p22)
void setPowerLevel(uint8_t powerLevel)
{
  _powerLevel = (powerLevel > 31 ? 31 : powerLevel);
  if (_isRFM69HW) _powerLevel /= 2;
  writeReg(REG_PALEVEL, (readReg(REG_PALEVEL) & 0xE0) | _powerLevel);
}

bool canSend()
{
  if (_mode == RF69_MODE_RX && PAYLOADLEN == 0 && readRSSI() < CSMA_LIMIT) // if signal stronger than -100dBm is detected assume channel activity
  {
    setMode(RF69_MODE_STANDBY);
    return true;
  }
  return false;
}

void RFM_send(uint8_t toAddress, const void* buffer, uint8_t bufferSize, bool requestACK)
{
  writeReg(REG_PACKETCONFIG2, (readReg(REG_PACKETCONFIG2) & 0xFB) | RF_PACKET2_RXRESTART); // avoid RX deadlocks
  uint32_t now = millis(); // CHANGE //
  while (!canSend() && millis() - now < RF69_CSMA_LIMIT_MS) RFM_receiveDone(); // CHANGE //
  sendFrame(toAddress, buffer, bufferSize, requestACK, false);
}

// to increase the chance of getting a packet across, call this function instead of send
// and it handles all the ACK requesting/retrying for you :)
// The only twist is that you have to manually listen to ACK requests on the other side and send back the ACKs
// The reason for the semi-automaton is that the lib is interrupt driven and
// requires user action to read the received data and decide what to do with it
// replies usually take only 5..8ms at 50kbps@915MHz
bool RFM_sendWithRetry(uint8_t toAddress, const void* buffer, uint8_t bufferSize, uint8_t retries, uint8_t retryWaitTime) {
  uint32_t sentTime;
  for (uint8_t i = 0; i <= retries; i++)
  {
    send(toAddress, buffer, bufferSize, true);
    sentTime = millis(); // CHANGE //
    while (millis() - sentTime < retryWaitTime) // CHANGE //
    {
      if (ACKReceived(toAddress))
      {
        return true;
      }
    }
  }
  return false;
}

// should be polled immediately after sending a packet with ACK request
bool ACKReceived(uint8_t fromNodeID) {
  if (RFM_receiveDone())
    return (RFM_SENDERID == fromNodeID || fromNodeID == RF69_BROADCAST_ADDR) && ACK_RECEIVED;
  return false;
}

// check whether an ACK was requested in the last received packet (non-broadcasted packet)
bool RFM_ACKRequested() {
  return ACK_REQUESTED && (TARGETID != RF69_BROADCAST_ADDR);
}

// should be called immediately after reception in case sender wants ACK
void RFM_sendACK(const void* buffer, uint8_t bufferSize) {
  ACK_REQUESTED = 0;   // TWS added to make sure we don't end up in a timing race and infinite loop sending Acks
  uint8_t sender = RFM_SENDERID;
  int16_t _RSSI = RFM_RSSI; // save payload received RSSI value
  writeReg(REG_PACKETCONFIG2, (readReg(REG_PACKETCONFIG2) & 0xFB) | RF_PACKET2_RXRESTART); // avoid RX deadlocks
  uint32_t now = millis(); // CHANGE //
  while (!canSend() && millis() - now < RF69_CSMA_LIMIT_MS) RFM_receiveDone(); // CHANGE //
  RFM_SENDERID = sender;    // TWS: Restore SenderID after it gets wiped out by RFM_receiveDone()
  sendFrame(sender, buffer, bufferSize, false, true);
  RFM_RSSI = _RSSI; // restore payload RSSI
}

// internal function
void sendFrame(uint8_t toAddress, const void* buffer, uint8_t bufferSize, bool requestACK, bool RFM_sendACK)
{
  setMode(RF69_MODE_STANDBY); // turn off receiver to prevent reception while filling fifo
  while ((readReg(REG_IRQFLAGS1) & RF_IRQFLAGS1_MODEREADY) == 0x00); // wait for ModeReady
  writeReg(REG_DIOMAPPING1, RF_DIOMAPPING1_DIO0_00); // DIO0 is "Packet Sent"
  if (bufferSize > RF69_MAX_DATA_LEN) bufferSize = RF69_MAX_DATA_LEN;

  // control byte
  uint8_t CTLbyte = 0x00;
  if (RFM_sendACK)
    CTLbyte = RFM69_CTL_SENDACK;
  else if (requestACK)
    CTLbyte = RFM69_CTL_REQACK;

  // write to FIFO
  select();
  spi_write(REG_FIFO | 0x80); //spi_write(REG_FIFO | 0x80); //SPI.transfer(REG_FIFO | 0x80); // CHANGE //
  spi_write(bufferSize + 3); //spi_write(bufferSize + 3); //SPI.transfer(bufferSize + 3); // CHANGE //
  spi_write(toAddress); //spi_write(toAddress); //SPI.transfer(toAddress); // CHANGE //
  spi_write(_address); //spi_write(_address) //SPI.transfer(_address); // CHANGE //
  spi_write(CTLbyte); //spi_write(CTLbyte); //SPI.transfer(CTLbyte); // CHANGE //

  for (uint8_t i = 0; i < bufferSize; i++)
    spi_write(((uint8_t*) buffer)[i]); //SPI.transfer(((uint8_t*) buffer)[i]); // CHANGE //
  unselect();

  // no need to wait for transmit mode to be ready since its handled by the radio
  setMode(RF69_MODE_TX);
  uint32_t txStart = millis(); // CHANGE //
  while (digitalRead(_interruptPin) == 0 && millis() - txStart < RF69_TX_LIMIT_MS); // wait for DIO0 to turn HIGH signalling transmission finish // CHANGE //
  setMode(RF69_MODE_STANDBY);
}

// internal function - interrupt gets called when a packet is received
void interruptHandler() {
  if (_mode == RF69_MODE_RX && (readReg(REG_IRQFLAGS2) & RF_IRQFLAGS2_PAYLOADREADY))
  {
    setMode(RF69_MODE_STANDBY);
    select();
    spi_write(REG_FIFO & 0x7F); //SPI.transfer(REG_FIFO & 0x7F); // CHANGE //
    PAYLOADLEN = spi_write(0); //SPI.transfer(0); // CHANGE //
    PAYLOADLEN = PAYLOADLEN > 66 ? 66 : PAYLOADLEN; // precaution
    TARGETID = spi_write(0); //SPI.transfer(0); // CHANGE //
    if(!(_promiscuousMode || TARGETID == _address || TARGETID == RF69_BROADCAST_ADDR) // match this node's address, or broadcast address or anything in promiscuous mode
       || PAYLOADLEN < 3) // address situation could receive packets that are malformed and don't fit this libraries extra fields
    {
      PAYLOADLEN = 0;
      unselect();
      receiveBegin();
      return;
    }

    RFM_DATALEN = PAYLOADLEN - 3;
    RFM_SENDERID = spi_write(0); //SPI.transfer(0); // CHANGE //
    uint8_t CTLbyte = spi_write(0); //SPI.transfer(0); // CHANGE //

    ACK_RECEIVED = CTLbyte & RFM69_CTL_SENDACK; // extract ACK-received flag
    ACK_REQUESTED = CTLbyte & RFM69_CTL_REQACK; // extract ACK-requested flag
    
    interruptHook(CTLbyte);     // TWS: hook to derived class interrupt function

    for (uint8_t i = 0; i < RFM_DATALEN; i++)
    {
      RFM_DATA[i] = spi_write(0); //SPI.transfer(0); // CHANGE //
    }
    if (RFM_DATALEN < RF69_MAX_DATA_LEN) RFM_DATA[RFM_DATALEN] = 0; // add null at end of string
    unselect();
    setMode(RF69_MODE_RX);
  }
  RFM_RSSI = readRSSI();
}

// internal function
void isr0() { _inISR = true; interruptHandler(); _inISR = false; } // CHANGE //?

// internal function
void receiveBegin() {
  RFM_DATALEN = 0;
  RFM_SENDERID = 0;
  TARGETID = 0;
  PAYLOADLEN = 0;
  ACK_REQUESTED = 0;
  ACK_RECEIVED = 0;
  RFM_RSSI = 0;
  if (readReg(REG_IRQFLAGS2) & RF_IRQFLAGS2_PAYLOADREADY)
    writeReg(REG_PACKETCONFIG2, (readReg(REG_PACKETCONFIG2) & 0xFB) | RF_PACKET2_RXRESTART); // avoid RX deadlocks
  writeReg(REG_DIOMAPPING1, RF_DIOMAPPING1_DIO0_01); // set DIO0 to "PAYLOADREADY" in receive mode
  setMode(RF69_MODE_RX);
}

// checks if a packet was received and/or puts transceiver in receive (ie RX or listen) mode
bool RFM_receiveDone() {
  system_interrupt_disable_global(); //noInterrupts(); // re-enabled in unselect() via setMode() or via receiveBegin() // CHANGE //

  if (_mode == RF69_MODE_RX && PAYLOADLEN > 0)
  {
    setMode(RF69_MODE_STANDBY); // enables interrupts
    return true;
  }
  else if (_mode == RF69_MODE_RX) // already in RX no payload yet
  {
    system_interrupt_enable_global(); //interrupts(); // explicitly re-enable interrupts // CHANGE //
    return false;
  }
  receiveBegin();
  return false;
}

// To enable encryption: radio.encrypt("ABCDEFGHIJKLMNOP");
// To disable encryption: radio.encrypt(null) or radio.encrypt(0)
// KEY HAS TO BE 16 bytes !!!
RFM_encrypt(const char* key) {
  setMode(RF69_MODE_STANDBY);
  if (key != 0)
  {
    select();
    spi_write(REG_AESKEY1 | 0x80); //SPI.transfer(REG_AESKEY1 | 0x80); // CHANGE //
    for (uint8_t i = 0; i < 16; i++)
      spi_write(key[i]); //SPI.transfer(key[i]); // CHANGE //
    unselect();
  }
  writeReg(REG_PACKETCONFIG2, (readReg(REG_PACKETCONFIG2) & 0xFE) | (key ? 1 : 0));
}

// get the received signal strength indicator (RFM_RSSI)
int16_t readRSSI(bool forceTrigger) {
  int16_t rssi = 0;
  if (forceTrigger)
  {
    // RSSI trigger not needed if DAGC is in continuous mode
    writeReg(REG_RSSICONFIG, RF_RSSI_START);
    while ((readReg(REG_RSSICONFIG) & RF_RSSI_DONE) == 0x00); // wait for RSSI_Ready
  }
  rssi = -readReg(REG_RSSIVALUE);
  rssi >>= 1;
  return rssi;
}

uint8_t readReg(uint8_t addr)
{
  select();
  spi_write(addr & 0x7F); //SPI.transfer(addr & 0x7F); // CHANGE //
  uint8_t regval = spi_write(0); //SPI.transfer(0); // CHANGE //
  unselect();
  return regval;
}

void writeReg(uint8_t addr, uint8_t value)
{
  select();
  spi_write(addr | 0x80); //SPI.transfer(addr | 0x80); // CHANGE //
  spi_write(value); //SPI.transfer(value); // CHANGE //
  unselect();
}

// select the RFM69 transceiver (save SPI settings, set CS low)
void select() {
  system_interrupt_disable_global(); //noInterrupts(); // CHANGE //

  // set RFM69 SPI settings
  //SPI.setDataMode(SPI_MODE0); // CHANGE //
  //SPI.setBitOrder(MSBFIRST); // CHANGE //
  //SPI.setClockDivider(SPI_CLOCK_DIV4); // decided to slow down from DIV2 after SPI stalling in some instances, especially visible on mega1284p when RFM69 and FLASH chip both present // CHANGE //
  spi_select_slave(&spi_master_instance, &slave, true); //digitalWrite(_slaveSelectPin, LOW); // CHANGE //
}

// unselect the RFM69 transceiver (set CS high, restore SPI settings)
void unselect() {
  spi_select_slave(&spi_master_instance, &slave, false); //digitalWrite(_slaveSelectPin, HIGH); // CHANGE //
  maybeInterrupts();
}

// true  = disable filtering to capture all frames on network
// false = enable node/broadcast filtering to capture only frames sent to this/broadcast address
void promiscuous(bool onOff) {
  _promiscuousMode = onOff;
  //writeReg(REG_PACKETCONFIG1, (readReg(REG_PACKETCONFIG1) & 0xF9) | (onOff ? RF_PACKET1_ADRSFILTERING_OFF : RF_PACKET1_ADRSFILTERING_NODEBROADCAST));
}

// for RFM69HW only: you must call RFM_setHighPower(true) after RFM_initialize() or else transmission won't work
void RFM_setHighPower(bool onOff) {
  _isRFM69HW = onOff;
  writeReg(REG_OCP, _isRFM69HW ? RF_OCP_OFF : RF_OCP_ON);
  if (_isRFM69HW) // turning ON
    writeReg(REG_PALEVEL, (readReg(REG_PALEVEL) & 0x1F) | RF_PALEVEL_PA1_ON | RF_PALEVEL_PA2_ON); // enable P1 & P2 amplifier stages
  else
    writeReg(REG_PALEVEL, RF_PALEVEL_PA0_ON | RF_PALEVEL_PA1_OFF | RF_PALEVEL_PA2_OFF | _powerLevel); // enable P0 only
}

// internal function
void setHighPowerRegs(bool onOff) {
  writeReg(REG_TESTPA1, onOff ? 0x5D : 0x55);
  writeReg(REG_TESTPA2, onOff ? 0x7C : 0x70);
}

// set the slave select (CS) pin 
void setCS(uint8_t newSPISlaveSelect) {
  _slaveSelectPin = newSPISlaveSelect;
  //digitalWrite(_slaveSelectPin, HIGH); // CHANGE //
  //pinMode(_slaveSelectPin, OUTPUT); // CHANGE //
  spi_select_slave(&spi_master_instance, &slave, false);
}

//for debugging
#define REGISTER_DETAIL 0

void readAllRegs()
{
  uint8_t regVal;
  
  Serial.println("Address - HEX - BIN");
  for (uint8_t regAddr = 1; regAddr <= 0x4F; regAddr++)
  {
    select();
    spi_write(regAddr & 0x7F); //SPI.transfer(regAddr & 0x7F); // send address + r/w bit // CHANGE //
    regVal = spi_write(0); //SPI.transfer(0); // CHANGE //
    unselect();

    //Serial.print(regAddr, HEX); // CHANGE //
    //Serial.print(" - "); // CHANGE //
    //Serial.print(regVal,HEX); // CHANGE //
    //Serial.print(" - "); // CHANGE //
    //Serial.println(regVal,BIN); // CHANGE //
  }
  unselect();
}

void rcCalibration()
{
  writeReg(REG_OSC1, RF_OSC1_RCCAL_START);
  while ((readReg(REG_OSC1) & RF_OSC1_RCCAL_DONE) == 0x00);
}

inline void maybeInterrupts()
{
  // Only reenable interrupts if we're not being called from the ISR
  if (!_inISR) 
	  system_interrupt_enable_global(); //interrupts(); // CHANGE //
}
#endif