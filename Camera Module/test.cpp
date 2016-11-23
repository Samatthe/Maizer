//g++ -x c++ -std=c++11 Pi_Example.cpp RFM69.cpp RFM69.h -o Pi_RFM69 -lwiringPi -DRASPBERRY

#include "rfm69.h"
#include <iostream>
#include <string>
#include <wiringPiSPI.h>
#include <wiringPi.h>
#include <bitset>

using namespace std;

// Addresses for this node. CHANGE THESE FOR EACH NODE!
#define NETWORKID     0   // Must be the same for all nodes (0 to 255)
#define MYNODEID      3   // My node ID (0 to 255)
#define TONODEID      2   // Destination node ID (0 to 254, 255 = broadcast)

#define FREQUENCY     RF69_915MHZ

// AES encryption (or not):
#define ENCRYPT       true // Set to "true" to use encryption
#define ENCRYPTKEY    "TOPSECRETPASSWRD" // Use the same 16-byte key on all nodes

// Use ACKnowledge when sending messages (or not):
#define USEACK        false // Request ACKs or not

int main() {
  RFM69 radio;
  cout << "Node " << MYNODEID << " ready" << endl;
  radio.initialize(FREQUENCY, MYNODEID, NETWORKID);
  radio.setHighPower(); // Always use this for RFM69HCW
  if (ENCRYPT) {
    radio.encrypt(ENCRYPTKEY);
  }

  int sendlength = 3;
  char sendbuffer[16];

  while (true) {
    // RECEIVING



    if (radio.receiveDone()) // Got one!
    {
      cout << "received from node " << radio.SENDERID << ": [";

      // The actual message is contained in the DATA array,
      // and is DATALEN bytes in size:
      for (unsigned int i = 0; i < radio.DATALEN; i++)
        cout << ((char)radio.DATA[i]);
      cout << "]" << endl;
      //radio.send(TONODEID, sendbuffer, sendlength);
    }



    sendbuffer[0] = 'L'; // x axis byte
    sendbuffer[1] = 'o'; // y axis byte
    sendbuffer[2] = 'l'; // button byte -- order is: up down left right left_click right_click middle_click laser_on?

    if (radio.canSend()) {  //sends fast
      radio.send(TONODEID, sendbuffer, sendlength);
    }

      
  }
}
