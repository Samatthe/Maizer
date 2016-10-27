//gcc -x c++ -std=c++11 Pi_Example.cpp RFM69.cpp RFM69.h -o Pi_RFM69

#include "RFM69.h"
#include <iostream>
#include <string>

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
    if (delayer == 1000)
    {
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
      
      sendlength = 0; // reset the packet
    }

    // RECEIVING

    // In this section, we'll check with the RFM69HCW to see
    // if it has received any packets:
    if (radio.receiveDone()) // Got one!
    {
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
