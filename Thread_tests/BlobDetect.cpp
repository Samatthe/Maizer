//COMPILE LINE
//g++ `pkg-config opencv cvblob --cflags --libs` -O3 BlobDetect.cpp


//objectTrackingTutorial.cpp

//Written by  Kyle Hounslow 2013

//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software")
//, to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
//and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//IN THE SOFTWARE.

#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>

/*//SPI STUFF
#include <iostream>
#include <errno.h>
#include <wiringPiSPI.h>
#include <unistd.h>
#include <wiringPi.h>
#include "rfm69.h"

static const int CHANNEL = 0;*/


#include <sstream>
#include <string>
#include <vector>
#include <iostream>
#include <opencv/cv.h>
#include <opencv2/opencv.hpp>


using namespace cv;
using namespace std;

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

/*// colors can be made by creating an unsigned long int
// colors are 1 byte each, 0x<blue><green><red>
const unsigned long int red = 0x0000FF;//red
const unsigned long int green = 0x00FF00;//green
const unsigned long int blue = 0xFF0000;//blue

//int blah = wiringPiSPISetup(1, 100000);
//unsigned char LEDSPIbuffer[8];


RFM69 radio;//empting to
*/


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




//initial min and max HSV filter values.
//these will be changed using trackbars
int H_MIN = 0;
int H_MAX = 256;
int S_MIN = 0;
int S_MAX = 256;
int V_MIN = 200;
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
int keyboard; //input from keyboard


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

void drawObject(int x, int y, Mat &frame){

	//use some of the openCV drawing functions to draw crosshairs
	//on your tracked image!

	//UPDATE:JUNE 18TH, 2013
	//added 'if' and 'else' statements to prevent
	//memory errors from writing off the screen (ie. (-25,-25) is not within the window!)

	circle(frame, Point(x, y), 20, Scalar(0, 255, 0), 2);
	if (y - 25 > 0)
		line(frame, Point(x, y), Point(x, y - 25), Scalar(0, 255, 0), 2);
	else line(frame, Point(x, y), Point(x, 0), Scalar(0, 255, 0), 2);
	if (y + 25 < FRAME_HEIGHT)
		line(frame, Point(x, y), Point(x, y + 25), Scalar(0, 255, 0), 2);
	else line(frame, Point(x, y), Point(x, FRAME_HEIGHT), Scalar(0, 255, 0), 2);
	if (x - 25 > 0)
		line(frame, Point(x, y), Point(x - 25, y), Scalar(0, 255, 0), 2);
	else line(frame, Point(x, y), Point(0, y), Scalar(0, 255, 0), 2);
	if (x + 25 < FRAME_WIDTH)
		line(frame, Point(x, y), Point(x + 25, y), Scalar(0, 255, 0), 2);
	else line(frame, Point(x, y), Point(FRAME_WIDTH, y), Scalar(0, 255, 0), 2);

	//putText(frame, intToString(x) + "," + intToString(y), Point(x, y + 30), 1, 1, Scalar(0, 255, 0), 2);

}

void morphOps(Mat &thresh){

	//create structuring element that will be used to "dilate" and "erode" image.
	//the element chosen here is a 3px by 3px rectangle

	Mat erodeElement = getStructuringElement(MORPH_RECT, Size(3, 3));
	//dilate with larger element so make sure object is nicely visible
	Mat dilateElement = getStructuringElement(MORPH_RECT, Size(8, 8));

	erode(thresh, thresh, erodeElement);
	//erode(thresh, thresh, erodeElement);


	dilate(thresh, thresh, dilateElement);
	//dilate(thresh, thresh, dilateElement);
}
/*
void SPIsend(int x, int y){
	static char sendbuffer[4];

	///////////////////////////////////////////CHANGED TO WORK WITH JAMES' RECEIVER
	//x = 137;
	//y = 492;

	sendbuffer[0] = x & 0x3F;

	sendbuffer[1] = (x >> 6) & 0x3F;
	sendbuffer[1] |= 0x40;

	sendbuffer[2] = y & 0x3F;
	sendbuffer[2] |= 0x80;

	sendbuffer[3] = (y >> 6) & 0x3F;
	sendbuffer[3] |= 0xC0;


	// SENDING

	static int sendlength = 4; //6 if sending chars
	radio.setLED(red);
	// Send the packet!
	//cout << "sending to node " << TONODEID << ": [";

	//for (unsigned int i = 0; i < sendlength; i++)
	//cout << sendbuffer[i];
	//cout << "]" << endl;     
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
}*/



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
			lock_guard<mutex> guard(coords_lock);
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
				//putText(cameraFeed, "Tracking Object", Point(0, 50), 2, 1, Scalar(0, 255, 0), 2);
				//draw object location on screen
				//drawObject(x, y, cameraFeed);
				if(coords.x != x && coords.y != y){
					coords.update = true;
					coords.x = x;
					coords.y = y;
					cout << intToString(x) << ", " << intToString(y) << endl;
				}
				else{
					coords.update = false;
				}

				//SPIsend(x, y);
			}

		}
		else cout << "TOO MUCH NOISE " << numObjects << endl;//putText(cameraFeed, "TOO MUCH NOISE! ADJUST FILTER", Point(0, 50), 1, 2, Scalar(0, 0, 255), 2);
	}
}
int BlobDetect() {
	//some boolean variables for different functionality within this
	//program
	bool trackObjects = true;
	bool useMorphOps = true;
	//Matrix to store each frame of the webcam feed
	Mat cameraFeed;
	//matrix storage for binary threshold image
	Mat thresh;
	//x and y values for the location of the object
	int x = 0, y = 0;
	//create slider bars for HSV filtering
	createTrackbars();
	//video capture object to acquire webcam feed
	VideoCapture capture;
	//open capture object at location zero (default location for webcam)
	capture.open(0);
	//set height and width of capture frame
	capture.set(CV_CAP_PROP_FRAME_WIDTH, FRAME_WIDTH);
	capture.set(CV_CAP_PROP_FRAME_HEIGHT, FRAME_HEIGHT);

	// Initialize the RFM69HCW:
	radio.initialize(FREQUENCY, MYNODEID, NETWORKID);
	radio.setHighPower(); // Always use this for RFM69HCW

	// Turn on encryption if desired:
	if (ENCRYPT) {
		radio.encrypt(ENCRYPTKEY);
	}


	time_t start, end;
	double fps, sec;
	int counter = 0;
	char k;

	time(&start);
	pMOG2 = createBackgroundSubtractorMOG2(50, 16, false); //MOG2 approach
	while (1){
		time(&end);
		++counter;
		sec = difftime(end, start);
		fps = counter / sec;
		//printf("FPS = %.2f\n", fps);

		//read the current frame
		capture.read(cameraFeed);
		if (!cameraFeed.empty()){
			cvtColor(cameraFeed, thresh, COLOR_BGR2GRAY);
			threshold(thresh, thresh, V_MIN, V_MAX, THRESH_TOZERO);
			//if (useMorphOps)
				//morphOps(thresh);
			pMOG2->apply(thresh, thresh);
			if (trackObjects)
				trackFilteredObject(x, y, thresh, cameraFeed);
			//imshow("Frame", cameraFeed);
			imshow("FG Mask MOG 2", thresh);
		}
		waitKey(1);
	}

	return(0);
}
//