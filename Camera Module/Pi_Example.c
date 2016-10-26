// Include the RFM69 and SPI libraries:
#include <stdio.h>
#include <RFM69.h>

// Addresses for this node.
#define NETWORKID     0   // Must be the same for all nodes (0 to 255)
#define MYNODEID      1   // My node ID (0 to 255)
#define TONODEID      2   // Destination node ID (0 to 254, 255 = broadcast)

// RFM69 frequency:
#define FREQUENCY     RF69_915MHZ

// AES encryption:
#define ENCRYPT       true // Set to "true" to use encryption
#define ENCRYPTKEY    "TOPSECRETPASSWRD" // Use the same 16-byte key on all nodes

// Use ACKnowledge when sending messages:
#define USEACK        true

int main()
{
  // Open a serial port so we can send keystrokes to the module:
  
  printf("Node ");
  printf(%d, MYNODEID);
  printf(" ready\n");  
    
  // Initialize the RFM69HCW:
  RFM_initialize(FREQUENCY, MYNODEID, NETWORKID);
  RFM_setHighPower(); // Always use this for RFM69HCW

  // Turn on encryption if desired:
  if (ENCRYPT)
    RFM_encrypt(ENCRYPTKEY);

while(1)
{
  // Set up a "buffer" for characters that we'll send:
  
  static char sendbuffer[62];
  static int sendlength = 0;

  // SENDING

  // In this section, we'll gather serial characters and
  // send them to the other node if we (1) get a carriage return,
  // or (2) the buffer is full (61 characters).
  
  // If there is any serial input, add it to the buffer:

  if (Serial.available() > 0)
  {
      printf("sending to node ");
      printf("%d", TONODEID);
      printf(": [");
      for (byte i = 0; i < sendlength; i++)
        printf(sendbuffer[i]);
      printf("]\n");
      
      // There are two ways to send packets. If you want
      // acknowledgements, use RFM_sendWithRetry():
      
      if (USEACK)
      {
        if (RFM_sendWithRetry(TONODEID, sendbuffer, sendlength))
          printf("ACK received!\n");
        else
          printf("no ACK received :(\n");
      }

      // If you don't need acknowledgements, just use RFM_send():
      
      else // don't use ACK
      {
        RFM_send(TONODEID, sendbuffer, sendlength);
      }
      
      sendlength = 0; // reset the packet
    }
  }

  // RECEIVING

  // In this section, we'll check with the RFM69HCW to see
  // if it has received any packets:

  if (RFM_receiveDone()) // Got one!
  {
    // Print out the information:
    
    printf("received from node ");
    printf("%d", RFM_SENDERID);
    printf(": [");

    // The actual message is contained in the RFM_DATA array,
    // and is RFM_DATALEN bytes in size:
    
    for (byte i = 0; i < RFM_DATALEN; i++)
      printf((char)RFM_DATA[i]);

    // RFM_RSSI is the "Receive Signal Strength Indicator",
    // smaller numbers mean higher power.
    
    printf("], RSSI ");
    printf("%d\n", RFM_RSSI);

    // Send an ACK if requested.
    // (You don't need this code if you're not using ACKs.)
    
    if (RFM_ACKRequested())
    {
      RFM_sendACK();
      printf("ACK sent\n");
    }
  }
}

return 0;
}