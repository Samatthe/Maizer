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

unsigned int color[3] = {255, 0, 0};
RFM69 radio;

void ColorCycle();

int main() {
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

    ColorCycle();


    if (radio.receiveDone()) // Got one!
    {
      //radio.setLED(0xFF0000);
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
      //radio.setLED(0x00FF00);
      radio.send(TONODEID, sendbuffer, sendlength);
    }

      
  }
}

void ColorCycle()
{
  static int color = 0;
  static int speed = 5;
  static int index = 0;
  if(index == 0)
  {
    radio.setLED(0xFF - color,color,0x0);
  }
  else if(index == 1)
  {
    radio.setLED(0x0,0xFF - color,color);
  }
  else if(index == 2)
  {
    radio.setLED(color,0x0,0xFF - color);
  }
  
  color += speed;
  if(color >= 0xFF)
  {
    color = 0;
    index++;
    if(index > 3)
    index = 0;
  }
}