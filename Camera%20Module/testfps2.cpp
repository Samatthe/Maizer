/* 
 * File:        testfps.cpp
 * Author:      Gary Stafford
 * Description: Test the fps of a webcam using OpenCV
 * Created:     February 3, 2013
 */

#include <opencv2/opencv.hpp>    
#include <opencv2/highgui.hpp>
#include <time.h>
#include <stdio.h>

#include "testfps2.hpp"

using namespace std;
using namespace cv;

// Test 1: OpenCV (w/ webcam feed)
/*int TestFpsNoVideo(int &captureWidth, int &captureHeight) {
    IplImage* frame;
    CvCapture* capture = cvCreateCameraCapture(-1);
    cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH, captureWidth);
    cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT, captureHeight);

    time_t start, end;
    double fps, sec;
    int counter = 0;
    char k;

    time(&start);

    while (1) {
        frame = cvQueryFrame(capture);
        time(&end);
        ++counter;
        sec = difftime(end, start);
        fps = counter / sec;
        printf("FPS = %.2f\n", fps);

        if (!frame) {
            printf("Error");
            break;
        }

        k = cvWaitKey(10)&0xff;
        switch (k) {
            case 27:
            case 'q':
            case 'Q':
                break;
        }
    }

    cvReleaseCapture(&capture);
    
    return 0;
}
*/

int TestFpsNoVideo(int &captureWidth, int &captureHeight){
    return 1;
}


// Test 2: OpenCV (w/o webcam feed)
int TestFpsShowVideo(int &captureWidth, int &captureHeight) {
    //IplImage* frame;
    //CvCapture* capture = cvCreateCameraCapture(-1);
    VideoCapture capture(0);
    //cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH, captureWidth);
    //cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT, captureHeight);
    namedWindow("Webcam Preview", CV_WINDOW_AUTOSIZE);
    moveWindow("Webcam Preview", 300, 200);

    //cvVideoCapture capture(0); //default camera

    if(!capture.isOpened()){
        return -1;
    }

    
    time_t start, end;
    double fps, sec;
    int counter = 0;
    char k;

    //time(&start);
    Mat frame;
    time(&start);

    while (1) {

        capture >> frame;

        //frame = cvQueryFrame(capture);
        time(&end);
        ++counter;
        sec = difftime(end, start);
        fps = counter / sec;
        printf("FPS = %d\n", fps);

        //if (!frame) {
        //    printf("Error");
        //    break;
        //}

        imshow("Webcam Preview", frame);

        waitKey(1)&0xff;
        //switch (k) {
        //    case 27:
        //    case 'q':
        //    case 'Q':
        //        break;
        //}
    }

    destroyWindow("Webcam Preview");
    //cvReleaseCapture(&capture);
    
    return 0;
}