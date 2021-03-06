//========================================
//C++ Header File: genImageProjective.h
//========================================

#ifndef GENIMAGE_H
#define GENIMAGE_H

#include <QPointF>

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