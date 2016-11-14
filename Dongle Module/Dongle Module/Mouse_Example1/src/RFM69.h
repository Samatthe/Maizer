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
#ifndef RFM69_H
#define RFM69_H

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

volatile uint16_t RFM_DATA[RF69_MAX_DATA_LEN]; // recv/xmit buf, including header & crc bytes
volatile uint16_t RFM_DATALEN;
volatile uint16_t RFM_SENDERID;
volatile uint16_t TARGETID; // should match _address
volatile uint16_t PAYLOADLEN;
volatile uint16_t ACK_REQUESTED;
volatile uint16_t ACK_RECEIVED; // should be polled immediately after sending a packet with ACK request
volatile int16_t RFM_RSSI; // most accurate RSSI during reception (closest to the reception)
volatile uint16_t _mode; // should be protected?


extern void RFM69(void);
extern bool RFM_initialize(uint8_t freqBand, uint8_t ID, uint8_t networkID);
extern void setAddress(uint8_t addr);
extern void setNetwork(uint8_t networkID);
extern bool canSend(void);
extern void RFM_send(uint8_t toAddress, const void* buffer, uint8_t bufferSize, bool requestACK);
extern bool RFM_sendWithRetry(uint8_t toAddress, const void* buffer, uint8_t bufferSize, uint8_t retries, uint8_t retryWaitTime); // 40ms roundtrip req for 61byte packets
extern bool RFM_receiveDone(void);
extern bool ACKReceived(uint8_t fromNodeID);
extern bool RFM_ACKRequested(void);
extern void RFM_sendACK(const void* buffer, uint8_t bufferSize);
extern uint32_t getFrequency(void);
extern void setFrequency(uint32_t freqHz);
extern void RFM_encrypt(const char* key);
extern void setCS(uint8_t newSPISlaveSelect);
extern int16_t readRSSI(void);
extern void RFM_promiscuous(bool onOff);
extern void RFM_setHighPower(bool onOFF); // has to be called after RFM_initialize() for RFM69HW
extern void setPowerLevel(uint8_t level); // reduce/increase transmit power level
extern void sleep(void);
extern uint8_t readTemperature(uint8_t calFactor); // get CMOS temperature (8bit)
extern void rcCalibration(void); // calibrate the internal RC oscillator for use in wide temperature variations - see datasheet section [4.3.5. RC Timer Accuracy]

// allow hacking registers by making these public
extern uint8_t readReg(volatile uint16_t addr);
extern void writeReg(uint8_t addr, uint8_t val);

extern void isr0(void);
extern void interruptHandler(void);
volatile bool _inISR;
extern void sendFrame(uint8_t toAddress, const void* buffer, uint8_t size, bool requestACK, bool sendACK);

volatile uint8_t _slaveSelectPin;
volatile uint8_t _interruptPin;
volatile uint8_t _interruptNum;
volatile uint8_t _address;
volatile bool _promiscuousMode;
uint8_t _powerLevel;
volatile bool _isRFM69HW;

extern void receiveBegin(void);
extern void setMode(uint8_t mode);
extern void setHighPowerRegs(bool onOff);
extern void selectrf(void);
extern void unselect(void);
extern void maybeInterrupts(void);




///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
extern void configure_extint_channel(void);
extern void configure_extint_callbacks(void);
extern void configure_port_pins(void);

extern void configure_rtc_count(void);
extern uint32_t millis(void);
extern void reset_millis(void);
#endif