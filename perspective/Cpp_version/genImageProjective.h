//========================================
//C++ Header File: genImageProjective.h
//========================================

#ifndef GENIMAGE_H
#define GENIMAGE_H

class QPointF{
private:
	float x_coord;
 	float y_coord;

public:
  QPointF(float x_in, float y_in){
    x_coord = x_in;
    y_coord = y_in;
  }
  
  QPointF(int x_in, int y_in){
    x_coord = (float)(x_in);
    y_coord = (float)(y_in);
  }
  

  QPointF(){}

  void setX(float x_in){
    x_coord = x_in;
  }

  void setY(float y_in){
    y_coord = y_in;
  }

  float x(){
    return x_coord;
  }

  float y(){
    return y_coord;
  }

  void q_print(){
    //print("(" + x_coord + "," + y_coord + ")");
  }


};

// Class to transform an Image Point using Perspective transformation
class genImageProjective
{
public:
    genImageProjective();

    int computeCoeefficients(void);
    int mapSourceToDestPoint(QPointF& sourcePoint, QPointF& destPoint);

public:
    QPointF sourceArea[4]; // Source Image area limits (Rectangular)
    QPointF destArea[4];   // Destination Image area limits (Perspectivelly Transformed)

private:
    static int gaussjordan(float  **a, float  *b, int n);

    bool coefficientsComputed;
    float vc[8];           // Vector of Transform Coefficients
};

#endif // GENIMAGE_H
//========================================