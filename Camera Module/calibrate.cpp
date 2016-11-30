bool calibrating = false;
#define DONGLEID 2
//note, nothing sets the camera into calibration right now!
//CHANGE: erase nodeid, change to dongleid and laserid
#define LASERID 3

//int x, y; //make x,y location global?

//QPointF calibrationPoint = new QpointF(0, 0);
//QPointF piPoint = new QpointF(0, 0);
//QPointF screenPoint = new QpointF(0, 0);

//genImageProjective screen;

while (true) {
  static char sendbuffer[4];

  if (radio.receiveDone()) { // Got one!
    if (radio.SENDERID == DONGLEID) { // if data came from dongle
      if (radio.DATA[0] == 'R') { // dongle thinks we're in regular mode

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
        
        for (int i = 0; i < 2; i++) { // try to send the packet twice
          delayMillis(1);
    		  radio.send(DONGLEID, sendbuffer, sendlength);
        }
      }

      else if (radio.DATA[0] == 'C') { // dongle thinks we're in calibration mode
        sendlength = 1;

        if (calibrating) {
          sendbuffer[0] = 'Y'; // tell dongle we're still calibrating
          calibrating = true;
        }
        else {//this case shouldn't really happen
          sendbuffer[0] = 'N'; // tell dongle we're done calibrating
        calibrating = false;
        }

        for (int i = 0; i < 2; i++) { // send the packet to dongle twice
          delayMillis(1);
          radio.send(DONGLEID, sendbuffer, sendlength);
        }

        for (int i = 0; i < 2; i++) { // send packet to remote twice
          delayMillis(1);
          radio.send(LASERID, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
        }
      }
    }

    else if (radio.DATA[0] == LASERID) { // if data came from laser module
      //get the keys and do stuff
      if (radio.DATA[2] & 0x02) { //trackball button is clicked
        calibrating = false; //end calibration

        //tell dongle we're done calibrating
        sendlength = 1;
        sendbuffer[0] = 'N';

        for (int i = 0; i < 5; i++) { // send packet to dongle 5 times (for good measure)
          delayMillis(1);
          radio.send(DONGLE, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
        }

//        screen.computeCoefficients();
      }
      else if (radio.DATA[2] & 0x80) { //up arrow sets top left spot
//        x,y 
//        calibrationPoint.setX(x);
//        calibrationPoint.setY(y);

//        screen.sourceArea[0] = calibrationPoint;
        radio.setLED(0xFF);
      }
      else if (radio.DATA[2] & 0x10) { //right arrow sets top right spot
//        calibrationPoint.setX(x);
//        calibrationPoint.setY(y);

//        screen.sourceArea[1] = calibrationPoint;
        radio.setLED(0xFFFF);
      }
      else if (radio.DATA[2] & 0x40) { //down arrow sets bottom right spot
//        calibrationPoint.setX(x);
//        calibrationPoint.setY(y);

//        screen.sourceArea[2] = calibrationPoint;
        radio.setLED(0x00FF00);
      }
      else if (radio.DATA[2] & 0x20) { //left arrow sets bottom left spot
//        calibrationPoint.setX(x);
//        calibrationPoint.setY(y);

//        screen.sourceArea[3] = calibrationPoint;
        radio.setLED(0xFF0000);
      }
    }
  }
}
