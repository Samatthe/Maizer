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

#include "genImageProjective.h"

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

#include <wiringSerial.h>


using namespace cv;
using namespace std;


static const int CHANNEL = 0;

//SPIIIIIIIIIIIIIIIIIIIIII
// Addresses for this node. CHANGE THESE FOR EACH NODE!
#define NETWORKID     0   // Must be the same for all nodes (0 to 255)
#define MYNODEID      1   // My node ID (0 to 255)
#define DONGLEID      2   // Destination node ID (0 to 254, 255 = broadcast)
#define LASERID		  3

#define MAX_PC_XY 4095

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
int H_MAX = 99;
int S_MIN = 37;
int S_MAX = 256;
int V_MIN = 170;
int V_MAX = 256;
int cal_H_MIN = 0;
int cal_H_MAX = 99;
int cal_S_MIN = 30;
int cal_S_MAX = 256;
int cal_V_MIN = 0;
int cal_V_MAX = 256;
//default capture width and height
const int FRAME_WIDTH = 640;
const int FRAME_HEIGHT = 480;
//max number of objects to be detected in frame
const int MAX_NUM_OBJECTS = 50;
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

genImageProjective transform_screen;
QPointF temp_point(0,0);
QPointF from_cam(0,0);




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





/*void SPIsend(){
	
	
	// Initialize the RFM69HCW:
	

	// Turn on encryption if desired:
	if (ENCRYPT) {
		radio.encrypt(ENCRYPTKEY);
	}
	//int sendlength = 3;
	static char sendbuffer[4];
	static int sendlength = 4; //6 if sending chars
	uint16_t temp_x;
	uint16_t temp_y;
	while(1){
		//cout << "SPIIIIIIIIII" << endl;
			//cout << calibrating << endl;
			//cout << digitalRead(15) << endl;
			if(!digitalRead(15)){
				calibrating = true;
			}
		
			if(calibrating){
				//calibrate();
			}
			
			coords_lock.lock();
			from_cam.setX(coords.x);
			from_cam.setY(coords.y);
			coords_lock.unlock();
			
			transform_screen.mapSourceToDestPoint(from_cam, temp_point);
			
			temp_x = (uint16_t)temp_point.x();
			temp_y = (uint16_t)temp_point.y();
			cout << "SPI: " << temp_x << ", " << temp_y << endl;
			//coords_lock.lock();
			//if(coords.update){
				//coords.update = false;
				sendbuffer[0] = temp_x & 0x003F;

				sendbuffer[1] = (temp_x >> 6) & 0x003F;
				sendbuffer[1] |= 0x40;

				sendbuffer[2] = temp_y & 0x3F;
				sendbuffer[2] |= 0x80;

				sendbuffer[3] = (temp_y >> 6) & 0x3F;
				sendbuffer[3] |= 0xC0;
			//}
			//coords_lock.unlock();
			// SENDING
			
			radio.setLED(red);

			radio.send(DONGLEID, sendbuffer, sendlength);
			
			delay(100);
			
	}
}*/


void XBeesend(){
	static unsigned char sendbuffer[4];
	static int sendlength = 4; //6 if sending chars
	uint16_t temp_x;
	uint16_t temp_y;
	while(1){
			if(!digitalRead(15)){
				calibrating = true;
			}
		
			if(calibrating){
				//calibrate();
			}
			
			coords_lock.lock();
			from_cam.setX(coords.x);
			from_cam.setY(coords.y);
			coords_lock.unlock();
			
			transform_screen.mapSourceToDestPoint(from_cam, temp_point);
			
			temp_x = (uint16_t)temp_point.x();
			temp_y = (uint16_t)temp_point.y();
			cout << "XBee: " << temp_x << ", " << temp_y << endl;

			sendbuffer[0] = temp_x & 0x003F;

			sendbuffer[1] = (temp_x >> 6) & 0x003F;
			sendbuffer[1] |= 0x40;

			sendbuffer[2] = temp_y & 0x3F;
			sendbuffer[2] |= 0x80;

			sendbuffer[3] = (temp_y >> 6) & 0x3F;
			sendbuffer[3] |= 0xC0;

			for(int i = 0; i < sendlength; i++){
				serialPutchar(fd, sendbuffer[i]);
			}
			delay(50);		
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
				//if(coords.x != x && coords.y != y){
					//coords.update = true;
					coords.x = x;
					coords.y = y;
					cout << "blob: " << coords.x << ", " << coords.y << endl;
				//}
				coords_lock.unlock();
			}

		}
		else{
			cout << "TOO MUCH NOISE " << numObjects << endl;
			V_MIN++;
		}
	}
}

void zoomScreen(Mat &cameraFeed, Rect &boundRect, Mat &transmtx, Mat &thresh, bool second_zoom){
	//matrix storage for binary threshold image
	int value = 170;
	while(1){
		cout << "check 1" << endl;
		if(!second_zoom){
			capture.read(cameraFeed);
			cout << "check 2" << endl;
		}
		else{//else might be irrelevant???
			cameraFeed = imread("first_zoom.jpg", 1);
			cout << "check 3" << endl;
		}
		if (!cameraFeed.empty()){
			cout << "check 4" << endl;
			//cout << "not empty" << endl;
			//imshow("feed", cameraFeed);
			if(!second_zoom){
				cout << "check 5" << endl;

				//flip(cameraFeed, cameraFeed, -1);
				cvtColor(cameraFeed,thresh,CV_BGR2GRAY);
				imshow("pre-thresh", thresh);
				threshold( thresh, thresh, value, 255,CV_THRESH_BINARY );//adjust 70 if not getting four corners on first zoom
				imshow("post-thresh", thresh);
			}
			else{
				cout << "check 6" << endl;
				//cout << "else" << endl;
				cvtColor(cameraFeed,thresh,CV_BGR2GRAY);//Test with grayscale and projecting all black screen
				//imshow("pre-thresh2", thresh);
				threshold( thresh, thresh, value, 255,CV_THRESH_BINARY );
				//inRange(thresh, cv::Scalar(H_MIN, S_MIN, V_MIN), cv::Scalar(H_MAX, S_MAX, V_MAX), thresh);//for using trackbars
				//inRange(thresh, cv::Scalar(cal_H_MIN, cal_S_MIN, cal_V_MIN), cv::Scalar(cal_H_MAX, cal_S_MAX, cal_V_MAX), thresh); //if you know the calibration HSV values
				//imshow("post-thresh2", thresh);
			}
			cout << "check 7" << endl;
			vector< vector <Point> > contours; // Vector for storing contour
			vector< Vec4i > hierarchy;
			int largest_contour_index=0;
			int largest_area=0;
			vector<vector<Point> > contours_poly(1);

			Mat dst(thresh.rows,thresh.cols,CV_8UC1,Scalar::all(0)); //create destination image
			findContours( thresh.clone(), contours, hierarchy,CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE ); // Find the contours in the image
			
			//cout << contours.size() << endl; //if contours is empty, will crash
			if(!contours.empty()){
				for( int i = 0; i< contours.size(); i++ ){
					double a=contourArea( contours[i],false);  //  Find the area of contour
					if(a>largest_area){
						largest_area=a;
						largest_contour_index=i;                //Store the index of largest contour
					}
				 }
				 cout << "check 8" << endl;
				 
				 cout << "check 9" << endl;
				 approxPolyDP( Mat(contours[largest_contour_index]), contours_poly[0],5, true );
				 cout << "check 10" << endl;
				 boundRect=boundingRect(contours[largest_contour_index]);
				 cout << "check not reached" << endl;
			}
			else
				cout << "contours is empty :(" << endl;
				
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
imwrite("transmtx.jpg",   transmtx);
				rectangle(thresh,boundRect,Scalar(0,255,0),1,8,0);
				cout << value << endl;
				imshow("zoom_thresh", thresh);
				break;
			   }
			  else{
				cout<<"Make sure that your are getting 4 corner using approxPolyDP..."<<endl;
				cout << value << endl;
				if(value <= 55){
					//IDK DO SOMETHING
				}
				else{
					value--;
				}
			  }
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
	Rect boundRect2;
	Mat transmtx;
	Mat thr;
	Mat transmtx2;
	Mat thr2;
	//x and y values for the location of the object
	int x = 0, y = 0;
	//create slider bars for HSV filtering
	createTrackbars();
	//open capture object at location zero (default location for webcam)
	capture.release();
	if(!capture.open(0))
		cout << "open failed" << endl;
	//set height and width of capture frame
	//capture.set(CAP_PROP_FRAME_WIDTH, FRAME_WIDTH);
	//capture.set(CAP_PROP_FRAME_HEIGHT, FRAME_HEIGHT);
	
	capture.set(CAP_PROP_FPS, 90);
	
	signal(SIGINT, signalHandler);
	zoomScreen(cameraFeed, boundRect, transmtx, thr, false); //first zoom	
	imshow("pre-warp", cameraFeed);
	warpPerspective(cameraFeed, cameraFeed, transmtx, thr.size());
	imshow("first post-warp", cameraFeed);
	Mat first_zoom = cameraFeed(boundRect);

	imwrite("first_zoom.jpg", first_zoom);
	cout << "returning6" << endl;

	//imshow("first zoom", first_zoom);
	//at this point first_zoom has been flipped (for when camera is upsidedown) and is zoomed in on the projector screen
	zoomScreen(cameraFeed, boundRect2, transmtx2, thr2, true); //second zoom
	cout << "returning7" << endl;
	

	//warpPerspective(image_roi2, image_roi2, transmtx2, thr2.size());
	Mat second_zoom (cameraFeed, boundRect2);
	//imwrite("second_zoom.jpg", second_zoom);
	//imshow("second zoom", second_zoom);

	Point max_xy = boundRect2.br();
	cout << "Max_xy = (" << max_xy.x << "," << max_xy.y << ")" << endl;
	
	//Set the source points
	temp_point.setX((float)0);
	temp_point.setY((float)0);
	transform_screen.sourceArea[0] = temp_point;
	temp_point.setX((float)max_xy.x);
	transform_screen.sourceArea[1] = temp_point;
	temp_point.setY((float)max_xy.y);
	transform_screen.sourceArea[2] = temp_point;
	temp_point.setX((float)0);
	transform_screen.sourceArea[3] = temp_point;
	
	//Set the destination points
	temp_point.setX((float)0);
	temp_point.setY((float)0);
	transform_screen.destArea[0] = temp_point;
	temp_point.setX((float)MAX_PC_XY);
	transform_screen.destArea[1] = temp_point;
	temp_point.setY((float)MAX_PC_XY);
	transform_screen.destArea[2] = temp_point;
	temp_point.setX((float)0);
	transform_screen.destArea[3] = temp_point;
	
	transform_screen.computeCoefficients();
	
	pMOG2 = createBackgroundSubtractorMOG2(50, 16, false); //MOG2 approach
	Mat image_roi = cameraFeed.clone();
	Mat image_roi1;
	
	//cout << capture.get(CAP_PROP_EXPOSURE) << endl;
	//cout << capture.get(CAP_PROP_BRIGHTNESS) << endl;
	//imshow("live", cameraFeed);
	//capture.set(CAP_PROP_EXPOSURE, 1);
	//capture.set(CAP_PROP_BRIGHTNESS, .5);
	/*zoomScreen(cameraFeed, boundRect, transmtx, thr, false); //first zoom	
	Mat helpme(cameraFeed, boundRect);
	
	while(1){
		imshow("HALP", helpme);
		//warpPerspective(helpme, image_roi1, transmtx, thr.size());
		//imshow("halp post-warp", image_roi);
		capture.read(cameraFeed);
		//warpPerspective(cameraFeed, cameraFeed, transmtx, thr.size());
		
	imshow("pre-warp", cameraFeed);
	//transpose(cameraFeed, cameraFeed);
	//flip(cameraFeed, cameraFeed, 1);
	warpPerspective(cameraFeed, image_roi, transmtx, thr.size());
	imshow("first post-warp", image_roi);
	//Mat first_zoom = cameraFeed(boundRect);
		//flip(cameraFeed, cameraFeed, -1);
		//Mat image_roi3 (cameraFeed, boundRect);
		//Mat image_roi5 (image_roi3, boundRect2);
		//imshow("first_zoom", first_zoom);
		waitKey(1);
	}*/
	
	while (1){

		//read the current frame
		if(!capture.read(cameraFeed))
			cout << "capture failed" << endl;
		if (!cameraFeed.empty()){
			imshow("live", cameraFeed);
			cvtColor(cameraFeed, thresh, COLOR_BGR2GRAY);
			//flip(thresh, thresh, -1);
			//flip(cameraFeed, cameraFeed, -1);
			//warpPerspective(thresh, thresh, transmtx, thr.size());
			//rectangle(thresh,boundRect,Scalar(0,255,0),1,8,0);
			image_roi1 = thresh(boundRect);
			//warpPerspective(image_roi1, image_roi1, transmtx2, thr2.size());
			image_roi = image_roi1(boundRect2);
			//threshold(thresh, thresh, V_MIN, V_MAX, THRESH_TOZERO);
			threshold(image_roi, image_roi, V_MIN, V_MAX, THRESH_TOZERO);
			//pMOG2->apply(thresh, thresh);
			//trackFilteredObject(x, y, thresh, cameraFeed);
			pMOG2->apply(image_roi, image_roi);
			trackFilteredObject(x, y, image_roi, cameraFeed);
			//warpPerspective(cameraFeed, cameraFeed, transmtx, thr.size());
			Mat image_roi3 (cameraFeed, boundRect);
			//imshow("roi3", image_roi3);
			//warpPerspective(image_roi3, image_roi3, transmtx2, thr2.size());
			Mat image_roi5 (image_roi3, boundRect2);
			imshow("Frame", image_roi5);
			imshow("FG Mask MOG 2", image_roi);
		}
		else{
			cout << "empty frame" << endl;
		}
		waitKey(1);
	}

	cout << "returning" << endl;
	return(0);
}


int main(int argc, char* argv[]) {
	//radio.initialize(FREQUENCY, MYNODEID, NETWORKID);
	//radio.setHighPower(); // Always use this for RFM69HCW

	//initialize serial port
	if((fd = serialOpen("/dev/ttyS0", 57600)) < 0){
		cout << "unable to poen serial port" << endl;
		return 1;
	}


	thread blob(BlobDetect);
	thread xbee(XBeesend);
	blob.join();
		cout << "returning2" << endl;

    return 0;
}
