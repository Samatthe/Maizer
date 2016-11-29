//SPI STUFF
#include <iostream>
#include <errno.h>
#include <wiringPiSPI.h>
#include <unistd.h>
#include <wiringPi.h>
#include "rfm69.h"

#include "globals.h"


static const int CHANNEL = 0;

//SPIIIIIIIIIIIIIIIIIIIIII
// Addresses for this node. CHANGE THESE FOR EACH NODE!
#define NETWORKID     0   // Must be the same for all nodes (0 to 255)
#define MYNODEID      1   // My node ID (0 to 255)
#define TONODEID      2   // Destination node ID (0 to 254, 255 = broadcast)

#define FREQUENCY     RF69_915MHZ

// AES encryption (or not):
#define ENCRYPT       true // Set to "true" to use encryption
#define ENCRYPTKEY    "TOPSECRETPASSWRD" // Use the same 16-byte key on all nodes

// Use ACKnowledge when sending messages (or not):
#define USEACK        false // Request ACKs or not

// colors can be made by creating an unsigned long int
// colors are 1 byte each, 0x<blue><green><red>
const unsigned long int red = 0x0000FF;//red
const unsigned long int green = 0x00FF00;//green
const unsigned long int blue = 0xFF0000;//blue

//int blah = wiringPiSPISetup(1, 100000);
//unsigned char LEDSPIbuffer[8];


/*void setLEDcolor(unsigned long int val) {
cout << "attempting to set color" << endl;
LEDSPIbuffer[0] = 0x00; //starting frame
LEDSPIbuffer[1] = 0x00;
LEDSPIbuffer[2] = 0x00;
LEDSPIbuffer[3] = 0x00;

LEDSPIbuffer[4] = 0xFF;
LEDSPIbuffer[5] = (val >> 16) & 0xFF;
LEDSPIbuffer[6] = (val >> 8) & 0xFF ;
LEDSPIbuffer[7] = (val & 0xFF);

wiringPiSPIDataRW(0, LEDSPIbuffer, 8);
delay(100);
}*/


void SPIsend(){
	static char sendbuffer[4];

	///////////////////////////////////////////CHANGED TO WORK WITH JAMES' RECEIVER
	//x = 137;
	//y = 492;
	while(1){
		lock_guard<mutex> guard(coords_lock);
		if(coords.update){
			coords.update = false;
			sendbuffer[0] = coords.x & 0x3F;

			sendbuffer[1] = (coords.x >> 6) & 0x3F;
			sendbuffer[1] |= 0x40;

			sendbuffer[2] = coords.y & 0x3F;
			sendbuffer[2] |= 0x80;

			sendbuffer[3] = (coords.y >> 6) & 0x3F;
			sendbuffer[3] |= 0xC0;


			// SENDING

			static int sendlength = 4; //6 if sending chars
			radio.setLED(red);

			if (USEACK)
			{
				if (radio.sendWithRetry(TONODEID, sendbuffer, sendlength))
					cout << "ACK received!" << endl;
				else
					cout << "no ACK received :(" << endl;
			}
			// If you don't need acknowledgements, just use send():
			else // don't use ACK
			{
				radio.send(TONODEID, sendbuffer, sendlength);
			}
			//sendlength = 0; // reset the packet
		}
	}
}
