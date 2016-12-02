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
#define MYNODEID      1   // My node ID (0 to 255)
#define TONODEID      2   // Destination node ID (0 to 254, 255 = broadcast)

#define FREQUENCY     RF69_915MHZ

// AES encryption (or not):
#define ENCRYPT       true // Set to "true" to use encryption
#define ENCRYPTKEY    "TOPSECRETPASSWRD" // Use the same 16-byte key on all nodes

// Use ACKnowledge when sending messages (or not):
#define USEACK        false // Request ACKs or not

void ColorCycle();
unsigned int color[3] = {255, 0, 0};
RFM69 radio;


bool calibrating = true;
#define DONGLEID 2
#define LASERID 3


int x = 100, y = 100;


int main() {
  cout << "Node " << MYNODEID << " ready" << endl;
  radio.initialize(FREQUENCY, MYNODEID, NETWORKID);
  radio.setHighPower(); // Always use this for RFM69HCW
  if (ENCRYPT) {
    radio.encrypt(ENCRYPTKEY);
  }

  int sendlength = 3;
  char sendbuffer[16];


  radio.setLED(0xFFFFFF);

  unsigned long count = 0;

  while(1) {
  	//ColorCycle();

/*  	count ++;
  	if (count == 30000000) {
  		cout << "~~~~~~~~~~~~~~~~~~~set calibration true" << endl;
  		calibrating = true;
  		count = 0;
  	}
*/



    if (radio.receiveDone()) { // Got one!

    	if (calibrating)
	  		cout << "calibrating" << endl;
	  	else
	  		cout << "not calibrating" << endl;


      if (radio.SENDERID == DONGLEID) { // if data came from dongle
      	cout << "dongle " << radio.DATA[0] << endl;
        if (!calibrating) { // dongle thinks we're in regular mode

  //        (x,y) - from OpenCV
  //        piPoint.setX(x);
  //        piPoint.setY(y);

  //        screen.mapSourceToDestPoint(piPoint, screenPoint);

          sendlength = 4;

          //location bytes
          sendbuffer[0] = x & 0x3F;

          sendbuffer[1] = (x >> 6) & 0x3F;
          sendbuffer[1] |= 0x40;

          sendbuffer[2] = y & 0x3F;
          sendbuffer[2] |= 0x80;
          
          sendbuffer[3] = (y >> 6) & 0x3F;
          sendbuffer[3] |= 0xC0;
          
          cout << "sending pos to dongle" << endl;
          for (int i = 0; i < 2; i++) { // try to send the packet twice
            delayMicroseconds(1);
            radio.send(DONGLEID, sendbuffer, sendlength);
          }
        }

        else {
        //else if (radio.DATA[0] == 'C') { // dongle thinks we're in calibration mode
          sendlength = 1;

          if (calibrating) {
            sendbuffer[0] = 'Y'; // tell dongle we're still calibrating
            calibrating = true;
          }
          else {//this case shouldn't really happen
            sendbuffer[0] = 'N'; // tell dongle we're done calibrating
            //calibrating = false;
          }

          cout << "sending " << sendbuffer[0] << " to dongle" << endl;
          for (int i = 0; i < 2; i++) { // send the packet to dongle twice
            delayMicroseconds(1);
            radio.send(DONGLEID, sendbuffer, sendlength);
          }

          delay(100);

          for (int i = 0; i < 2; i++) { // send packet to remote twice
            delayMicroseconds(1);
            radio.send(LASERID, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
            cout << "sending to laser" << endl;
          }
        }
      }

      else if (radio.SENDERID == LASERID) { // if data came from laser module
        cout << "received from laser" << endl;
        cout << unsigned(radio.DATALEN) << endl;
        //get the keys and do stuff
        if (radio.DATA[2] == 0b00000010) { //trackball button is clicked
        	cout << "leaving calibration mode" << endl;
          calibrating = false; //end calibration

          //tell dongle we're done calibrating
          sendlength = 1;
          sendbuffer[0] = 'N';

          for (int i = 0; i < 5; i++) { // send packet to dongle 5 times (for good measure)
            delayMicroseconds(1);
            radio.send(LASERID, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
          }

          for (int i = 0; i < 5; i++) { // send packet to dongle 5 times (for good measure)
            delayMicroseconds(1);
            radio.send(DONGLEID, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
          }

  //        screen.computeCoefficients();
        }
        else if (radio.DATA[2] == 0b10000000) { //up arrow sets top left spot
  //        x,y 
  //        calibrationPoint.setX(x);
  //        calibrationPoint.setY(y);

  //        screen.sourceArea[0] = calibrationPoint;
          radio.setLED(0xFF);
        }
        else if (radio.DATA[2] == 0b00010000) { //right arrow sets top right spot
  //        calibrationPoint.setX(x);
  //        calibrationPoint.setY(y);

  //        screen.sourceArea[1] = calibrationPoint;
          radio.setLED(0xFFFF);
        }
        else if (radio.DATA[2] == 0b01000000) { //down arrow sets bottom right spot
  //        calibrationPoint.setX(x);
  //        calibrationPoint.setY(y);

  //        screen.sourceArea[2] = calibrationPoint;
          radio.setLED(0x00FF00);
        }
        //else if (radio.DATA[2] == 'a') {
        else if (radio.DATA[2] == 0b00100000) { //left arrow sets bottom left spot
  //        calibrationPoint.setX(x);
  //        calibrationPoint.setY(y);

  //        screen.sourceArea[3] = calibrationPoint;
          radio.setLED(0xFF0000);
        }
      }
    }


  }
}


















// int main() {
//   cout << "Node " << MYNODEID << " ready" << endl;
//   radio.initialize(FREQUENCY, MYNODEID, NETWORKID);
//   radio.setHighPower(); // Always use this for RFM69HCW
//   if (ENCRYPT) {
//     radio.encrypt(ENCRYPTKEY);
//   }

//   int sendlength = 3;
//   char sendbuffer[16];

//   while (true) {
//     // RECEIVING
//   	//ColorCycle();


//     if (radio.receiveDone()) // Got one!
//     {
//   		cout << "received from node " << unsigned(radio.SENDERID) << ": [";

//   		// The actual message is contained in the DATA array,
//   		// and is DATALEN bytes in size:
//   		for (unsigned int i = 0; i < radio.DATALEN; i++) 
//   			cout << ((char)radio.DATA[i]);
//   		cout << "]" << endl;

//   		delay(1);
//   		sendbuffer[0] = 'L'; // x axis byte
// 	    sendbuffer[1] = 'o'; // y axis byte
// 	    sendbuffer[2] = 'l'; // button byte
      
//       for (int i = 0; i < 2; i++) {
//         delay(1);
//   		  radio.send(TONODEID, sendbuffer, sendlength);
//       }
//     }
// /*
//     sendbuffer[0] = 'L'; // x axis byte
//     sendbuffer[1] = 'o'; // y axis byte
//     sendbuffer[2] = 'l'; // button byte


//     radio.send(TONODEID, sendbuffer, sendlength);
// */
//   }
// }







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




