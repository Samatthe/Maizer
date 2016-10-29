
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
#include <thread>

#include <opencv2/opencv.hpp>    
#include <opencv2/highgui.hpp>

#include "testfps3.hpp"
#include "testcvblob3.hpp"

using namespace std;
using namespace cv;

void CaptureFrames(){
    VideoCapture capture(0);
    //cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH, captureWidth);
    //cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT, captureHeight);
    namedWindow("Webcam Preview", CV_WINDOW_AUTOSIZE);
    moveWindow("Webcam Preview", 300, 200);

    //cvVideoCapture capture(0); //default camera

    if(!capture.isOpened()){
    }

    
    time_t start, end;
    double fps, sec;
    int counter = 0;
    char k;
    
    Mat frame;

    time(&start);
    while (1) {

        //capture.grab();
        //capture.retrieve(frame);
        capture >> frame;

        time(&end);
        ++counter;
        sec = difftime(end, start);
        fps = counter / sec;
        cout << "FPS: " << fps << '\n';


        imshow("Webcam Preview", frame);

        waitKey(1);
        //switch (k) {
        //    case 27:
        //    case 'q':
        //    case 'Q':
        //        break;
        //}
    }

}

int main(int argc, char* argv[]){
    thread t1(CaptureFrames);


    t1.join();

    while(true){

    }
}

/*
int main(int argc, char* argv[]) {
    int captureMethod = 0;
    int captureWidth = 0;
    int captureHeight = 0;

    if (argc == 4) { // user input parameters with call
        captureMethod = strtol(argv[1], NULL, 0);
        captureWidth = strtol(argv[2], NULL, 0);
        captureHeight = strtol(argv[3], NULL, 0);

    } else { // user did not input parameters with call
        cout << endl << "Demonstrations/Tests: " << endl;
        cout << endl << "(1) Test OpenCV - Show Webcam" << endl;
        cout << endl << "(2) Test OpenCV - No Webcam" << endl;
        cout << endl << "(3) Test cvBlob - Show Image" << endl;
        cout << endl << "(4) Test cvBlob - No Image" << endl;
        cout << endl << "(5) Test Blob Tracking - Show Webcam" << endl;
        cout << endl << "(6) Test Blob Tracking - No Webcam" << endl;
        cout << endl << "Input test # (1-6): ";
        cin >> captureMethod;

        // test 3 and 4 don't require width and height parameters
        if (captureMethod != 3 && captureMethod != 4) {
            cout << endl << "Input capture width (pixels): ";
            cin >> captureWidth;
            cout << endl << "Input capture height (pixels): ";
            cin >> captureHeight;
            cout << endl;

            if (!captureWidth > 0) {
                cout << endl << "Width value incorrect" << endl;
                return -1;
            }

            if (!captureHeight > 0) {
                cout << endl << "Height value incorrect" << endl;
                return -1;
            }
        }
    }

    switch (captureMethod) {
        case 1:
            TestFpsShowVideo(captureWidth, captureHeight);
        case 2:
            TestFpsNoVideo(captureWidth, captureHeight);
            break;
        case 3:
            DetectBlobsShowStillImage();
            break;
        case 4:
            DetectBlobsNoStillImage();
            break;
        case 5:
            DetectBlobsShowVideo(captureWidth, captureHeight);
            break;
        case 6:
            DetectBlobsNoVideo(captureWidth, captureHeight);
            break;
        default:
            break;
    }
    return 0;
}

*/