/* 
 * File:        main.cpp
 * Author:      Gary Stafford
 * Description: Program entry point
 * Created:     February 3, 2013
 */

#include <stdio.h>
#include <sstream>
#include <stdlib.h>
#include <iostream>

#include "testfps.hpp"
//#include "testcvblob.hpp"

#include "globals.h"

//using namespace std;


//SPI STUFF
#include <iostream>
#include <errno.h>
#include <wiringPiSPI.h>
#include <unistd.h>
#include <wiringPi.h>

#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>


#include <sstream>
#include <string>
#include <vector>
#include <iostream>
#include <opencv/cv.h>
#include <opencv2/opencv.hpp>

#include <csignal>


using namespace cv;
using namespace std;


static const int CHANNEL = 0;

//SPIIIIIIIIIIIIIIIIIIIIII
// Addresses for this node. CHANGE THESE FOR EACH NODE!
#define NETWORKID     0   // Must be the same for all nodes (0 to 255)
#define MYNODEID      1   // My node ID (0 to 255)
#define DONGLEID      2   // Destination node ID (0 to 254, 255 = broadcast)
#define LASERID		  3

bool calibrating = false;

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


//initial min and max HSV filter values.
//these will be changed using trackbars
int H_MIN = 0;
int H_MAX = 256;
int S_MIN = 0;
int S_MAX = 256;
int V_MIN = 180;
int V_MAX = 256;
//default capture width and height
const int FRAME_WIDTH = 640;
const int FRAME_HEIGHT = 480;
//max number of objects to be detected in frame
const int MAX_NUM_OBJECTS = 100;
//minimum and maximum object area
const double MIN_OBJECT_AREA = 1;
const double MAX_OBJECT_AREA = 40;
//names that will appear at the top of each window
const string windowName = "Original Image";
const string windowName1 = "HSV Image";
const string windowName2 = "Thresholded Image";
const string windowName3 = "After Morphological Operations";
const string trackbarWindowName = "Trackbars";

Ptr<BackgroundSubtractor> pMOG2; //MOG2 Background subtractor
VideoCapture capture;




void calibrate(){
	int sendlength = 3;
	static char sendbuffer[4];
	while(1){
		//cout << "calibrate" << endl;
		if (radio.receiveDone()) { // Packet received
			cout << "receive" << endl;
		  if (radio.SENDERID == DONGLEID) { // if data came from dongle
			cout << "equal" << endl;
			//we're in calibration mode
			  sendlength = 1;
			  sendbuffer[0] = 'Y'; // tell dongle we're still calibrating

			  for (int i = 0; i < 2; i++) { // send the packet to dongle twice
				delayMicroseconds(1); // we might be able to remove this delay, not sure
				radio.send(DONGLEID, sendbuffer, sendlength);
			  }

			  delay(100); // this can be reduced or eliminated. I put this here to prevent race conditions/deadlocks during calibration

			  for (int i = 0; i < 2; i++) { // send packet to remote twice
				delayMicroseconds(1); // we might be able to remove this delay, not sure
				radio.send(LASERID, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
			  }
		  }

		  else if (radio.SENDERID == LASERID) { // if data came from laser module
			//get the keys and do stuff
			//cout << "got one from laser" << endl;
				if (radio.DATA[2] == 0b00000010) { //trackball button is clicked -- This ends calibration mode
				  calibrating = false; //end calibration
					//cout << "end calibration" << endl;
				  //tell dongle we're done calibrating
				  sendlength = 1;
				  sendbuffer[0] = 'N';

				  for (int i = 0; i < 5; i++) { // send packet to dongle 5 times (for good measure)
					delayMicroseconds(1); // we might be able to remove this delay, not sure
					radio.send(LASERID, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
				  }

				  for (int i = 0; i < 5; i++) { // send packet to dongle 5 times (for good measure)
					delayMicroseconds(1); // we might be able to remove this delay, not sure
					radio.send(DONGLEID, sendbuffer, sendlength); // request button info from laser and tell it we're calibrating
				  }
					break;
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





void SPIsend(){
	
	
	// Initialize the RFM69HCW:
	

	// Turn on encryption if desired:
	if (ENCRYPT) {
		radio.encrypt(ENCRYPTKEY);
	}
	int sendlength = 3;
	static char sendbuffer[4];

	while(1){
		//cout << "SPIIIIIIIIII" << endl;
			//cout << calibrating << endl;
			cout << digitalRead(15) << endl;
			if(!digitalRead(15)){
				calibrating = true;
			}
		
			if(calibrating){
				calibrate();
			}
			
			coords_lock.lock();
			cout << "SPI: " << coords.x << ", " << coords.y << endl;
			
			if(coords.update){
				coords.update = false;
				sendbuffer[0] = coords.x & 0x3F;

				sendbuffer[1] = (coords.x >> 6) & 0x3F;
				sendbuffer[1] |= 0x40;

				sendbuffer[2] = coords.y & 0x3F;
				sendbuffer[2] |= 0x80;

				sendbuffer[3] = (coords.y >> 6) & 0x3F;
				sendbuffer[3] |= 0xC0;
			}
			coords_lock.unlock();
			// SENDING
			
			static int sendlength = 4; //6 if sending chars
			radio.setLED(red);

			radio.send(DONGLEID, sendbuffer, sendlength);
			
	}
}







void signalHandler(int signum){
	//cout << "release" << endl;
	capture.release();
	
	exit(signum);

}



//COMPILE LINE
//g++ `pkg-config opencv cvblob --cflags --libs` -O3 BlobDetect.cpp


void on_trackbar(int, void*){
	//This function gets called whenever a
	// trackbar position is changed
}

string intToString(int number){
	std::stringstream ss;
	ss << number;
	return ss.str();
}

void createTrackbars(){
	//create window for trackbars


	namedWindow(trackbarWindowName, 0);
	//create memory to store trackbar name on window
	char TrackbarName[50];
	sprintf(TrackbarName, "H_MIN", H_MIN);
	sprintf(TrackbarName, "H_MAX", H_MAX);
	sprintf(TrackbarName, "S_MIN", S_MIN);
	sprintf(TrackbarName, "S_MAX", S_MAX);
	sprintf(TrackbarName, "V_MIN", V_MIN);
	sprintf(TrackbarName, "V_MAX", V_MAX);
	//create trackbars and insert them into window
	//3 parameters are: the address of the variable that is changing when the trackbar is moved(eg.H_LOW),
	//the max value the trackbar can move (eg. H_HIGH), 
	//and the function that is called whenever the trackbar is moved(eg. on_trackbar)
	//                                  ---->    ---->     ---->      
	createTrackbar("H_MIN", trackbarWindowName, &H_MIN, H_MAX, on_trackbar);
	createTrackbar("H_MAX", trackbarWindowName, &H_MAX, H_MAX, on_trackbar);
	createTrackbar("S_MIN", trackbarWindowName, &S_MIN, S_MAX, on_trackbar);
	createTrackbar("S_MAX", trackbarWindowName, &S_MAX, S_MAX, on_trackbar);
	createTrackbar("V_MIN", trackbarWindowName, &V_MIN, V_MAX, on_trackbar);
	createTrackbar("V_MAX", trackbarWindowName, &V_MAX, V_MAX, on_trackbar);
}

void trackFilteredObject(int &x, int &y, Mat threshold, Mat &cameraFeed){

	Mat temp;
	threshold.copyTo(temp);
	//these two vectors needed for output of findContours
	vector< vector<Point> > contours;
	vector<Vec4i> hierarchy;
	//find contours of filtered image using openCV findContours function
	findContours(temp, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE);
	//use moments method to find our filtered object
	double refArea = 0;
	bool objectFound = false;

	unsigned char unsignedchararray[3];

	if (hierarchy.size() > 0) {
		int numObjects = hierarchy.size();
		if (numObjects < MAX_NUM_OBJECTS){
			Moments moment;
			double area;
			for (int index = 0; index >= 0; index = hierarchy[index][0]) {

				moment = moments((cv::Mat)contours[index]);
				area = moment.m00;

				if (area > MIN_OBJECT_AREA && area<MAX_OBJECT_AREA && area>refArea){
					x = moment.m10 / area;
					y = moment.m01 / area;
					objectFound = true;
					refArea = area;
				}

			}
			//let user know you found an object
			if (objectFound == true){
				coords_lock.lock();
				if(coords.x != x && coords.y != y){
					coords.update = true;
					coords.x = x;
					coords.y = y;
					//cout << "blob: " << coords.x << ", " << coords.y << endl;
				}
				coords_lock.unlock();
			}

		}
		else cout << "TOO MUCH NOISE " << numObjects << endl;
	}
}

void zoomScreen(Mat &cameraFeed, Rect &boundRect, Mat &transmtx, Mat &thresh){
	//matrix storage for binary threshold image

	while(1){
		capture.read(cameraFeed);
		if (!cameraFeed.empty()){
			cout << "not empty" << endl;
			flip(cameraFeed, cameraFeed, -1);
			//imshow("feed", cameraFeed);
			 cvtColor(cameraFeed,thresh,CV_BGR2GRAY);
			 threshold( thresh, thresh, 70, 255,CV_THRESH_BINARY );

			 vector< vector <Point> > contours; // Vector for storing contour
			 vector< Vec4i > hierarchy;
			 int largest_contour_index=0;
			 int largest_area=0;

			 Mat dst(thresh.rows,thresh.cols,CV_8UC1,Scalar::all(0)); //create destination image
			 findContours( thresh.clone(), contours, hierarchy,CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE ); // Find the contours in the image
			 for( int i = 0; i< contours.size(); i++ ){
				double a=contourArea( contours[i],false);  //  Find the area of contour
				if(a>largest_area){
				largest_area=a;
				largest_contour_index=i;                //Store the index of largest contour
				}
			 }
			 vector<vector<Point> > contours_poly(1);
			 approxPolyDP( Mat(contours[largest_contour_index]), contours_poly[0],5, true );
			 boundRect=boundingRect(contours[largest_contour_index]);

			 if(contours_poly[0].size()==4){
				std::vector<Point2f> quad_pts;
				std::vector<Point2f> squre_pts;
				quad_pts.push_back(Point2f(contours_poly[0][0].x,contours_poly[0][0].y));
				quad_pts.push_back(Point2f(contours_poly[0][1].x,contours_poly[0][1].y));
				quad_pts.push_back(Point2f(contours_poly[0][3].x,contours_poly[0][3].y));
				quad_pts.push_back(Point2f(contours_poly[0][2].x,contours_poly[0][2].y));
				squre_pts.push_back(Point2f(boundRect.x,boundRect.y));
				squre_pts.push_back(Point2f(boundRect.x,boundRect.y+boundRect.height));
				squre_pts.push_back(Point2f(boundRect.x+boundRect.width,boundRect.y));
				squre_pts.push_back(Point2f(boundRect.x+boundRect.width,boundRect.y+boundRect.height));

				transmtx = getPerspectiveTransform(quad_pts,squre_pts);

				rectangle(thresh,boundRect,Scalar(0,255,0),1,8,0);

				break;
			   }
			   else
				cout<<"Make sure that your are getting 4 corner using approxPolyDP..."<<endl;
		}
		waitKey(1);
	}	
}


int BlobDetect() {
	//some boolean variables for different functionality within this
	//program
	//Matrix to store each frame of the webcam feed
	Mat cameraFeed;
	//matrix storage for binary threshold image
	Mat thresh;
	Rect boundRect;
	Mat transmtx;
	Mat thr;
	//x and y values for the location of the object
	int x = 0, y = 0;
	//create slider bars for HSV filtering
	//screateTrackbars();
	//open capture object at location zero (default location for webcam)
	capture.release();
	if(!capture.open(0))
		cout << "open failed" << endl;
	//set height and width of capture frame
	//capture.set(CAP_PROP_FRAME_WIDTH, FRAME_WIDTH);
	//capture.set(CAP_PROP_FRAME_HEIGHT, FRAME_HEIGHT);
	
	capture.set(CAP_PROP_FPS, 90);
	
	signal(SIGINT, signalHandler);
	zoomScreen(cameraFeed, boundRect, transmtx, thr);
	pMOG2 = createBackgroundSubtractorMOG2(50, 16, false); //MOG2 approach
	while (1){

		//read the current frame
		if(!capture.read(cameraFeed))
			cout << "capture failed" << endl;
		if (!cameraFeed.empty()){
			cvtColor(cameraFeed, thresh, COLOR_BGR2GRAY);
			flip(thresh, thresh, -1);
			flip(cameraFeed, cameraFeed, -1);
			warpPerspective(thresh, thresh, transmtx, thr.size());
			rectangle(thresh,boundRect,Scalar(0,255,0),1,8,0);
			Mat image_roi (thresh, boundRect);
			threshold(image_roi, image_roi, V_MIN, V_MAX, THRESH_TOZERO);
			pMOG2->apply(image_roi, image_roi);
			trackFilteredObject(x, y, image_roi, cameraFeed);
			warpPerspective(cameraFeed, cameraFeed, transmtx, thr.size());
			Mat image_roi2 (cameraFeed, boundRect);
			
			//imshow("Frame", image_roi2);
			//imshow("FG Mask MOG 2", image_roi);
		}
		waitKey(1);
	}

	return(0);
}


int main(int argc, char* argv[]) {
	radio.initialize(FREQUENCY, MYNODEID, NETWORKID);
	radio.setHighPower(); // Always use this for RFM69HCW

	thread blob(BlobDetect);
	thread spi(SPIsend);
	blob.join();
    return 0;
}
