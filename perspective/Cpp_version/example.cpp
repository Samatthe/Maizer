//============================================================
// C++ Code Example on how to use the 
//     genImageProjective class to draw a perspective 2D Grid
//============================================================


#include "genImageProjective.h"
#include <iostream>
#include <math.h>

using namespace std;
// Input: 4 Perspective-Tranformed points:
//        perspPoints[0] = top-left
//        perspPoints[1] = top-right
//        perspPoints[2] = bottom-right
//        perspPoints[3] = bottom-left

//THIS CODE IS USED TO TEST A VERY BASIC SETUP FUNCTION. 
//SEE BELOW FOR MORE SAMPLE CODE
/*
int main()
{
	int window_X = 1500;
	int window_Y = 900;
	int X1 = 25;
	int X2 = 350;
	int X3 = 370;
	int X4 = 35;
	int Y1 = 350;
	int Y2 = 310;
	int Y3 = 60;
	int Y4 = 20;
	int Cam_Frame_X = 400;
	int Cam_Frame_Y = 400;
	int Cam_Offset_X = (2*(1500/7))-(Cam_Frame_X/2);
	int Cam_Offset_Y = (900/2)-(Cam_Frame_Y/2);
	int PC_Frame_X = 400;
	int PC_Frame_Y = 400;
	int PC_Offset_X = (5*(1500/7))-(PC_Frame_X/2);
	int PC_Offset_Y = (900/2)-(PC_Frame_Y/2);

	
	//QPointF topLeft_source = new QPointF(X1, Y1);
	//QPointF topRight_source = new QPointF(X2,Y2);
	//QPointF bottomRight_source = new QPointF(X3,Y3);
	//QPointF bottomLeft_source = new QPointF(X4,X4);

	//QPointF topLeft_dest = new QPointF(10, PC_Frame_Y);
	//QPointF topRight_dest = new QPointF(PC_Frame_X, PC_Frame_Y);
	//QPointF bottomRight_dest = new QPointF(PC_Frame_X, 10);
	//QPointF bottomLeft_dest = new QPointF(10,10);
	

    // Setup a non-transformed area rectangle
    // I use a simple square rectangle here because in this case we are not interested in the source-rectangle,
    //  (we want to just draw a grid on the perspPoints[] area)
    //   but you can use any arbitrary rectangle to perform a real mapping to the perspPoints[] area
    QPointF topLeft_source = QPointF(X1, Y1);
	QPointF topRight_source = QPointF(X2,Y2);
	QPointF bottomRight_source = QPointF(X3,Y3);
	QPointF bottomLeft_source = QPointF(X4,Y4);

	QPointF topLeft_dest = QPointF(10, PC_Frame_Y);
	QPointF topRight_dest = QPointF(PC_Frame_X, PC_Frame_Y);
	QPointF bottomRight_dest = QPointF(PC_Frame_X, 10);
	QPointF bottomLeft_dest = QPointF(10,10);

    // Setup Projective trasform object
    genImageProjective imageProjective;
    imageProjective.sourceArea[0] = topLeft_source;
    imageProjective.sourceArea[1] = topRight_source;
    imageProjective.sourceArea[2] = bottomRight_source;
    imageProjective.sourceArea[3] = bottomLeft_source;

    imageProjective.destArea[0] = topLeft_dest;
    imageProjective.destArea[1] = topRight_dest;
    imageProjective.destArea[2] = bottomRight_dest;
    imageProjective.destArea[3] = bottomLeft_dest;

    int temp = imageProjective.computeCoefficients();

    cout << "temp = " << temp << endl;

    // Compute projective transform coefficients
    if (temp != 0){
        return 0; // This can actually fail if any 3 points of Source or Dest are colinear
    }

    return 0;
}

*/

/*
 * ACTUAL SAMPLE CODE
 */


int main(){


	//CALIBRATION VARIABLES, CAN BE CHANGED
	float X1, X2, X3, X4;
	float Y1, Y2, Y3, Y4;

	//GET CALIBRATION DATA HERE
	//THESE FUNCTIONS ARE NOT IMPLEMENTED
	topLeft(X1, Y1);
	topRight(X2, Y2);
	bottomRight(X3, Y3);
	bottomLeft(X4, Y4);



	//The max value is 32,767 for both x and y
	QPointF topLeft_dest = new QPointF(0, 0);
	QPointF topRight_dest = new QPointF(32767, 0);
	QPointF bottomRight_dest = new QPointF(32767, 32767);
	QPointF bottomLeft_dest = new QPointF(0,32767);


	//USE THE CALIBRATION DATA HERE
	QPointF topLeft_source = new QPointF(X1, Y1);
	QPointF topRight_source = new QPointF(X2,Y2);
	QPointF bottomRight_source = new QPointF(X3,Y3);
	QPointF bottomLeft_source = new QPointF(X4,X4);


	//SAVE THE DATA TO AN INSTANCE OF THE genImageProjective
	genImageProjective imageProjective;

	//SOURCE AREA, CALIBRATION RESULTS
    imageProjective.sourceArea[0] = topLeft_source;
    imageProjective.sourceArea[1] = topRight_source;
    imageProjective.sourceArea[2] = bottomRight_source;
    imageProjective.sourceArea[3] = bottomLeft_source;

    //DESTINATION AREA, X and Y max values of 32767
    imageProjective.destArea[0] = topLeft_dest;
    imageProjective.destArea[1] = topRight_dest;
    imageProjective.destArea[2] = bottomRight_dest;
    imageProjective.destArea[3] = bottomLeft_dest;

    //After assigning source and destination areas,
    //Compute coefficients
	int temp = imageProjective.computeCoefficients();

	

	return 0;
}



