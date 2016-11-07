//g++ -x c++ -std=c++11 Pi_Example.cpp RFM69.cpp RFM69.h -o Pi_RFM69 -lwiringPi

#include "RFM69.h"
#include <iostream>
#include <string>
#include <wiringPiSPI.h>
#include <wiringPi.h>

using namespace std;

// Addresses for this node. CHANGE THESE FOR EACH NODE!
#define NETWORKID     0   // Must be the same for all nodes (0 to 255)
#define MYNODEID      1   // My node ID (0 to 255)
#define TONODEID      2   // Destination node ID (0 to 254, 255 = broadcast)

#define FREQUENCY     RF69_915MHZ

// AES encryption (or not):
#define ENCRYPT       true // Set to "true" to use encryption
#define ENCRYPTKEY    "TOPSECRETPASSWRD" // Use the same 16-byte key on all nodes

// Use ACKnowledge when sending messages (or not):
#define USEACK        true // Request ACKs or not

// colors can be made by creating an unsigned long int
// colors are 1 byte each, 0x<blue><green><red>
const unsigned long int red = 0x0000FF;//red
const unsigned long int green = 0x00FF00;//green
const unsigned long int blue = 0xFF0000;//blue

//int blah = wiringPiSPISetup(1, 100000);
unsigned char LEDSPIbuffer[8];

void setLEDcolor(unsigned long int val) {
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
}


int main() {
  // Create a library object for our RFM69HCW module:
  RFM69 radio;


  // Open a serial port so we can send keystrokes to the module:
  cout << "Node " << MYNODEID << " ready" << endl;
    
  // Initialize the RFM69HCW:
  radio.initialize(FREQUENCY, MYNODEID, NETWORKID);
  radio.setHighPower(); // Always use this for RFM69HCW

  // Turn on encryption if desired:
  if (ENCRYPT) {
    radio.encrypt(ENCRYPTKEY);
  }

  while (true) {
    static unsigned int delayer = 0; // this will delay the characters we send
    delayer++;

    // Set up a "buffer" for characters that we'll send:
    static char sendbuffer[62] = "Hello";
    static int sendlength = 5;

    // SENDING
    
    // send "hello" every 1000 iterations:
    if (delayer == 100000000)
    {
      setLEDcolor(red);
      delayer = 0;
    
      // Send the packet!
      cout << "sending to node " << TONODEID << ": [";

      for (unsigned int i = 0; i < sendlength; i++)
        cout << sendbuffer[i];
      cout << "]" << endl;     
      // There are two ways to send packets. If you want
      // acknowledgements, use sendWithRetry():
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

    // RECEIVING

    // In this section, we'll check with the RFM69HCW to see
    // if it has received any packets:
    if (radio.receiveDone()) // Got one!
    {
      setLEDcolor(green);
      // Print out the information:
      cout << "received from node " << radio.SENDERID << ": [";

      // The actual message is contained in the DATA array,
      // and is DATALEN bytes in size:
      for (unsigned int i = 0; i < radio.DATALEN; i++)
        cout << ((char)radio.DATA[i]);//////////////////////////////////////////////this may not give actual characters to the command prompt

      // RSSI is the "Receive Signal Strength Indicator",
      // smaller numbers mean higher power.
      cout << "], RSSI " << radio.RSSI << endl;

      // Send an ACK if requested.
      // (You don't need this code if you're not using ACKs.)
      if (radio.ACKRequested())
      {
        radio.sendACK();
        cout << "ACK sent" << endl;
      }
    }
  }
}
