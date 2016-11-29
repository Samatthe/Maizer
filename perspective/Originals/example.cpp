//============================================================
// C++ Code Example on how to use the 
//     genImageProjective class to draw a perspective 2D Grid
//============================================================

#include "genImageProjective.h"

// Input: 4 Perspective-Tranformed points:
//        perspPoints[0] = top-left
//        perspPoints[1] = top-right
//        perspPoints[2] = bottom-right
//        perspPoints[3] = bottom-left
void drawGrid(QPointF *perspPoints)
{
(...)
        // Setup a non-transformed area rectangle
        // I use a simple square rectangle here because in this case we are not interested in the source-rectangle,
        //  (we want to just draw a grid on the perspPoints[] area)
        //   but you can use any arbitrary rectangle to perform a real mapping to the perspPoints[] area
        QPointF topLeft = QPointF(0,0);
        QPointF topRight = QPointF(1000,0);
        QPointF bottomRight = QPointF(1000,1000);
        QPointF bottomLeft = QPointF(0,1000);
        float width = topRight.x() - topLeft.x();
        float height = bottomLeft.y() - topLeft.y();

        // Setup Projective trasform object
        genImageProjective imageProjective;
        imageProjective.sourceArea[0] = topLeft;
        imageProjective.sourceArea[1] = topRight;
        imageProjective.sourceArea[2] = bottomRight;
        imageProjective.sourceArea[3] = bottomLeft;
        imageProjective.destArea[0] = perspPoints[0];
        imageProjective.destArea[1] = perspPoints[1];
        imageProjective.destArea[2] = perspPoints[2];
        imageProjective.destArea[3] = perspPoints[3];
        // Compute projective transform coefficients
        if (imageProjective.computeCoeefficients() != 0)
            return; // This can actually fail if any 3 points of Source or Dest are colinear

        // Initialize Grid parameters (without transform)
        float gridFirstLine = 0.1f; // The normalized position of first Grid Line (0.0 to 1.0)
        float gridStep = 0.1f;      // The normalized Grd size (=distance between grid lines: 0.0 to 1.0)

        // Draw Horizonal Grid lines
        QPointF lineStart, lineEnd, tempPnt;
        for (float pos = gridFirstLine; pos <= 1.0f; pos += gridStep)
        {
            // Compute Grid Line Start
            tempPnt = QPointF(topLeft.x(), topLeft.y() + pos*width);
            imageProjective.mapSourceToDestPoint(tempPnt, lineStart);
            // Compute Grid Line End
            tempPnt = QPointF(topRight.x(), topLeft.y() + pos*width);
            imageProjective.mapSourceToDestPoint(tempPnt, lineEnd);

            // Draw Horizontal Line (use your prefered method to draw the line)
            (...)
        }
        // Draw Vertical Grid lines
        for (float pos = gridFirstLine; pos <= 1.0f; pos += gridStep)
        {
            // Compute Grid Line Start
            tempPnt = QPointF(topLeft.x() + pos*height, topLeft.y());
            imageProjective.mapSourceToDestPoint(tempPnt, lineStart);
            // Compute Grid Line End
            tempPnt = QPointF(topLeft.x() + pos*height, bottomLeft.y());
            imageProjective.mapSourceToDestPoint(tempPnt, lineEnd);

            // Draw Vertical Line (use your prefered method to draw the line)
            (...)
        }
(...)
}





