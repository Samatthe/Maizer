 //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//



class QPointF{

  private float x_coord;
  private float y_coord;
 
  public QPointF(float x_in, float y_in){
    x_coord = x_in;
    y_coord = y_in;
  }
  
  public QPointF(int x_in, int y_in){
    x_coord = (float)(x_in);
    y_coord = (float)(y_in);
  }
  

  public QPointF(){
    x_coord = 0.0;
    y_coord = 0.0;
  }

  public void setX(float x_in){
    x_coord = x_in;
  }

  public void setY(float y_in){
    y_coord = y_in;
  }

  public float x(){
    return x_coord;
  }

  public float y(){
    return y_coord;
  }

  public void q_print(){
    print("(" + x_coord + "," + y_coord + ")");
  }


};

/////////////////////////////////////////////////////////////////////////////////////////////




//========================================
//C++ CPP File: genImageProjective.cpp
//========================================

class genImageProjective{
  
  private boolean coefficientsComputed;
  private float[] vc= new float[8];
  
  public QPointF[] sourceArea = new QPointF[4];
  public QPointF[] destArea = new QPointF[4];
  
  
  // ----------------------------------------------------
  // class genImageProjective
  // ----------------------------------------------------
  genImageProjective()
  {  
      QPointF temp = new QPointF(0,0);
      sourceArea[0] = sourceArea[1] = sourceArea[2] = sourceArea[3] = temp;
      destArea[0] = destArea[1] = destArea[2] = destArea[3] = temp;
      coefficientsComputed = false;
  }
  
  
  // --------------------------------------------------------------
  // Compute projective transform coeeeficients
  // RetValue: 0: Success, !=0: Error
  /*-------------------------------------------------------------*
   *                Projective coordinate transformation         *
   *-------------------------------------------------------------*/
  /*!
   *  computeCoeefficients()
   *
   *      Input:  this->sourceArea[4]: (source 4 points; unprimed)
   *              this->destArea[4]:   (transformed 4 points; primed)
   *              this->vc  (computed vector of transform coefficients)
   *      Return: 0 if OK; <0 on error
   *
   *  We have a set of 8 equations, describing the projective
   *  transformation that takes 4 points (sourceArea) into 4 other
   *  points (destArea).  These equations are:
   *
   *          x1' = (c[0]*x1 + c[1]*y1 + c[2]) / (c[6]*x1 + c[7]*y1 + 1)
   *          y1' = (c[3]*x1 + c[4]*y1 + c[5]) / (c[6]*x1 + c[7]*y1 + 1)
   *          x2' = (c[0]*x2 + c[1]*y2 + c[2]) / (c[6]*x2 + c[7]*y2 + 1)
   *          y2' = (c[3]*x2 + c[4]*y2 + c[5]) / (c[6]*x2 + c[7]*y2 + 1)
   *          x3' = (c[0]*x3 + c[1]*y3 + c[2]) / (c[6]*x3 + c[7]*y3 + 1)
   *          y3' = (c[3]*x3 + c[4]*y3 + c[5]) / (c[6]*x3 + c[7]*y3 + 1)
   *          x4' = (c[0]*x4 + c[1]*y4 + c[2]) / (c[6]*x4 + c[7]*y4 + 1)
   *          y4' = (c[3]*x4 + c[4]*y4 + c[5]) / (c[6]*x4 + c[7]*y4 + 1)
   *
   *  Multiplying both sides of each eqn by the denominator, we get
   *
   *           AC = B
   *
   *  where B and C are column vectors
   *
   *         B = [ x1' y1' x2' y2' x3' y3' x4' y4' ]
   *         C = [ c[0] c[1] c[2] c[3] c[4] c[5] c[6] c[7] ]
   *
   *  and A is the 8x8 matrix
   *
   *             x1   y1     1     0   0    0   -x1*x1'  -y1*x1'
   *              0    0     0    x1   y1   1   -x1*y1'  -y1*y1'
   *             x2   y2     1     0   0    0   -x2*x2'  -y2*x2'
   *              0    0     0    x2   y2   1   -x2*y2'  -y2*y2'
   *             x3   y3     1     0   0    0   -x3*x3'  -y3*x3'
   *              0    0     0    x3   y3   1   -x3*y3'  -y3*y3'
   *             x4   y4     1     0   0    0   -x4*x4'  -y4*x4'
   *              0    0     0    x4   y4   1   -x4*y4'  -y4*y4'
   *
   *  These eight equations are solved here for the coefficients C.
   *
   *  These eight coefficients can then be used to find the mapping
   *  (x,y) --> (x',y'):
   *
   *           x' = (c[0]x + c[1]y + c[2]) / (c[6]x + c[7]y + 1)
   *           y' = (c[3]x + c[4]y + c[5]) / (c[6]x + c[7]y + 1)
   *
   */
   
  public int calc_x(int x, int y){
    float a, b, c;
    a = vc[0]*(float)x + vc[1]*(float)y + vc[2];
    b = vc[3]*(float)x + vc[4]*(float)y + vc[5];
    c = vc[6]*(float)x + vc[7]*(float)y + 1;
    
    return (int)(a/c);
    
  }
  
  public int calc_y(int x, int y){
    float a, b, c;
    a = vc[0]*(float)x + vc[1]*(float)y + vc[2];
    b = vc[3]*(float)x + vc[4]*(float)y + vc[5];
    c = vc[6]*(float)x + vc[7]*(float)y + 1;
    
    return (int)(b/c);
  }
  
  
  public int computeCoefficients()
  {
      int retValue;
      retValue = 0;
      int i;
      float [] [] a = new float [8][8];  /* 8x8 matrix A  */
      float [] b = this.vc; /* rhs vector of primed coords X'; coeffs returned in vc[] */

    for(i = 0; i < 4; ++i){
        println(" ---------------- ");
        println("sourceArea[" + i + "].x() = " + sourceArea[i].x());
        println("sourceArea[" + i + "].y() = " + sourceArea[i].y());
    }
  
      b[0] = destArea[0].x();
      b[1] = destArea[0].y();
      b[2] = destArea[1].x();
      b[3] = destArea[1].y();
      b[4] = destArea[2].x();
      b[5] = destArea[2].y();
      b[6] = destArea[3].x();
      b[7] = destArea[3].y();
    
      for (i = 0; i < 8; i++)
    {
        if (a[i] == null)
        {
            retValue = -100; // ERROR_INT("a[i] not made", procName, 1);
            this.coefficientsComputed = (retValue == 0);
            return retValue;
        }
    }
      
      
  
      a[0][0] = sourceArea[0].x();
      a[0][1] = sourceArea[0].y();
      a[0][2] = 1.;
      a[0][6] = -sourceArea[0].x() * b[0];
      a[0][7] = -sourceArea[0].y() * b[0];
      a[1][3] = sourceArea[0].x();
      a[1][4] = sourceArea[0].y();
      a[1][5] = 1;
      a[1][6] = -sourceArea[0].x() * b[1];
      a[1][7] = -sourceArea[0].y() * b[1];
      a[2][0] = sourceArea[1].x();
      a[2][1] = sourceArea[1].y();
      a[2][2] = 1.;
      a[2][6] = -sourceArea[1].x() * b[2];
      a[2][7] = -sourceArea[1].y() * b[2];
      a[3][3] = sourceArea[1].x();
      a[3][4] = sourceArea[1].y();
      a[3][5] = 1;
      a[3][6] = -sourceArea[1].x() * b[3];
      a[3][7] = -sourceArea[1].y() * b[3];
      a[4][0] = sourceArea[2].x();
      a[4][1] = sourceArea[2].y();
      a[4][2] = 1.;
      a[4][6] = -sourceArea[2].x() * b[4];
      a[4][7] = -sourceArea[2].y() * b[4];
      a[5][3] = sourceArea[2].x();
      a[5][4] = sourceArea[2].y();
      a[5][5] = 1;
      a[5][6] = -sourceArea[2].x() * b[5];
      a[5][7] = -sourceArea[2].y() * b[5];
      a[6][0] = sourceArea[3].x(); //<>// //<>// //<>//
      a[6][1] = sourceArea[3].y();
      a[6][2] = 1.;
      a[6][6] = -sourceArea[3].x() * b[6];
      a[6][7] = -sourceArea[3].y() * b[6];
      a[7][3] = sourceArea[3].x();
      a[7][4] = sourceArea[3].y(); //<>//
      a[7][5] = 1;
      a[7][6] = -sourceArea[3].x() * b[7];
      a[7][7] = -sourceArea[3].y() * b[7]; //<>//

      for(i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
          print(a[i][j] + " ");
        }
        println();
      }
  
      retValue = gaussjordan(a, b, 8); //<>//

      for(i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
          print(a[i][j] + " ");
        }
        println();
      }
  
      this.coefficientsComputed = (retValue == 0); //<>//
      return retValue;
  }
  
  
  /*-------------------------------------------------------------*
   *               Gauss-jordan linear equation solver           *
   *-------------------------------------------------------------*/
  /*
   *  gaussjordan()
   *
   *      Input:   a  (n x n matrix)
   *               b  (rhs column vector)
   *               n  (dimension)
   *      Return:  0 if ok, 1 on error
   *
   *      Note side effects:
   *            (1) the matrix a is transformed to its inverse //<>// //<>// //<>//
   *            (2) the vector b is transformed to the solution X to the
   *                linear equation AX = B
   *
   *      Adapted from "Numerical Recipes in C, Second Edition", 1992
   *      pp. 36-41 (gauss-jordan elimination)
   */ //<>//
  public void SWAP(float a, float b)
  {
      float temp = (a); 
      (a) = (b); 
      (b) = temp;
  }
  
  public int gaussjordan(float [] []a, float [] b, int n)
  {
      int retValue = 0; //<>//
      int i, icol=0, irow=0, j, k, l, ll;
      int [] indexc = new int[n];
      int [] indexr = new int[n];
      int [] ipiv = new int[n];
      
      
      float  big, dum, pivinv, temp;
      float temp2;
  
      if (a == null) //<>//
        {
            retValue = -1; // ERROR_INT("a not defined", procName, 1); //<>//
            return retValue;
        }
        if (b == null)
        {
            retValue = -2; // ERROR_INT("b not defined", procName, 1);
            return retValue;
        }
    
        if (indexc == null)
        {
            retValue = -3; // ERROR_INT("indexc not made", procName, 1);
            return retValue;
        }
        if (indexr == null)
        {
            retValue = -4; // ERROR_INT("indexr not made", procName, 1);
            return retValue;
        }
        
        if (ipiv == null)
        {
            retValue = -5; // ERROR_INT("ipiv not made", procName, 1);
            return retValue;
        }
        
      
      for (i = 0; i < n; i++)
      {
          big = 0.0;

          for (j = 0; j < n; j++)
          {
              if (ipiv[j] != 1)
              {

                  //third nested loop
                  for (k = 0; k < n; k++)
                  {
                      println("------");
                      println("Value of a[" + j + "] [" + k + "] = " + a[j][k]);
                      println("Value of ipiv[" + k +"] = " + ipiv[k]);
                      if (ipiv[k] == 0)
                      {
                          if (abs(a[j][k]) >= big)
                          {
                              big = abs(a[j][k]);
                              println("big updated to: " + big);
                              irow = j;
                              icol = k;
                          }
                      }
                      else if (ipiv[k] > 1)
                      {
                          retValue = -6; // ERROR_INT("singular matrix", procName, 1);
                          return retValue;
                      }

                  } //for (k = 0; k < n; k++)

              } //(ipiv[j] != 1)

          } //(j = 0; j < n; j++)

          ++(ipiv[icol]);
  
          if (irow != icol)
          {
              for (l = 0; l < n; l++){
                  temp2 = a[irow][l];
                  a[irow][l] = a[icol][l];
                  a[icol][l] = temp2;
                }
              temp2 = b[irow]; //<>//
                  b[irow] = b[icol];
                  b[icol] = temp2;
          }

          for(int i2 = 0; i2 < 8; i2++){ //<>//
            for(int j2 = 0; j2 < 8; j2++){
              print(a[i2][j2] + " ");
            }
            println();
          }
  
          indexr[i] = irow;
          indexc[i] = icol; //<>//
          if (a[icol][icol] == 0.0)
          {
              retValue = -7; // ERROR_INT("singular matrix", procName, 1);
              return retValue;
          }
          pivinv = 1.0 / a[icol][icol]; //<>//
          a[icol][icol] = 1.0;
          for (l = 0; l < n; l++){
              a[icol][l] *= pivinv;
              println("new value of a[" + icol + "][" + l + "] = " + a[icol][l]);
            }
          b[icol] *= pivinv;
  
          for (ll = 0; ll < n; ll++)
          {
              if (ll != icol)
              {
                  dum = a[ll][icol]; //<>//
                  a[ll][icol] = 0.0;
                  for (l = 0; l < n; l++)
                      a[ll][l] -= a[icol][l] * dum;
                  b[ll] -= b[icol] * dum;
              }
          }

      } //for (i = 0; i < n; i++) //<>//
  
      for (l = n - 1; l >= 0; l--)
      {
          if (indexr[l] != indexc[l])
          {
              for (k = 0; k < n; k++){
                  temp2 = a[k][indexr[l]];
                  a[k][indexr[l]] = a[k][indexc[l]];
                  a[k][indexc[l]] = temp2;
              }
          }
      }
    
      this.vc = b;
      
      return retValue; //<>//
  }
  
  
  // --------------------------------------------------------------
  // Map a source point to destination using projective transform
  // --------------------------------------------------------------
  // Params:
  //  sourcePoint: initial point
  //  destPoint:   transformed point
  // RetValue: 0: Success, !=0: Error
  // --------------------------------------------------------------
  //  Notes:
  //   1. You must call once computeCoeefficients() to compute
  //      the this->vc[] vector of 8 coefficients, before you call
  //      mapSourceToDestPoint().
  //   2. If there was an error or the 8 coefficients were not computed,
  //      a -1 is returned and destPoint is just set to sourcePoint value.
  // --------------------------------------------------------------
  int mapSourceToDestPoint(QPointF sourcePoint, QPointF destPoint)
  {
      if (coefficientsComputed)
      {
          float factor = 1.0f / (vc[6] * sourcePoint.x() + vc[7] * sourcePoint.y() + 1.);
          destPoint.setX( factor * (vc[0] * sourcePoint.x() + vc[1] * sourcePoint.y() + vc[2]) );
          destPoint.setY( factor * (vc[3] * sourcePoint.x() + vc[4] * sourcePoint.y() + vc[5]) );
          return 0;
      }
      else // There was an error while computing coefficients
      {
          destPoint = sourcePoint; // just copy the source to destination...
          return -1;               // ...and return an error
      }
  }
  //========================================

}






/**
 * Regular Polygon
 * 
 * What is your favorite? Pentagon? Hexagon? Heptagon? 
 * No? What about the icosagon? The polygon() function 
 * created for this example is capable of drawing any 
 * regular polygon. Try placing different numbers into the 
 * polygon() function calls within draw() to explore. 
 */

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

QPointF topLeft_source = new QPointF(X1, Y1);
QPointF topRight_source = new QPointF(X2,Y2);
QPointF bottomRight_source = new QPointF(X3,Y3);
QPointF bottomLeft_source = new QPointF(X4,Y4);

QPointF topLeft_dest = new QPointF(10, PC_Frame_Y);
QPointF topRight_dest = new QPointF(PC_Frame_X, PC_Frame_Y);
QPointF bottomRight_dest = new QPointF(PC_Frame_X, 10);
QPointF bottomLeft_dest = new QPointF(10,10);


genImageProjective imageProjective = new genImageProjective();


void setup() {
  size(1500, 900);

  imageProjective.sourceArea[0] = topLeft_source;
  imageProjective.sourceArea[1] = topRight_source;
  imageProjective.sourceArea[2] = bottomRight_source;
  imageProjective.sourceArea[3] = bottomLeft_source;
  imageProjective.destArea[0] = topLeft_dest;
  imageProjective.destArea[1] = topRight_dest;
  imageProjective.destArea[2] = bottomRight_dest;
  imageProjective.destArea[3] = bottomLeft_dest;
  int temp = imageProjective.computeCoefficients();
  
  println("The value of temp is: " + temp);
  
  if(temp != 0){
    //while(true);
  }
  
  
}

void draw() {
  background(102);
  stroke(0);
  
  fill(150);
  beginShape();
  vertex(0           + Cam_Offset_X, Cam_Frame_Y + Cam_Offset_Y);
  vertex(Cam_Frame_X + Cam_Offset_X, Cam_Frame_Y + Cam_Offset_Y);
  vertex(Cam_Frame_X + Cam_Offset_X, 0           + Cam_Offset_Y);
  vertex(0           + Cam_Offset_X, 0           + Cam_Offset_Y);
  endShape(CLOSE);
  
  fill(175);
  beginShape();
  vertex(X1 + Cam_Offset_X, Y1 + Cam_Offset_Y);
  vertex(X2 + Cam_Offset_X, Y2 + Cam_Offset_Y);
  vertex(X3 + Cam_Offset_X, Y3 + Cam_Offset_Y);
  vertex(X4 + Cam_Offset_X, Y4 + Cam_Offset_Y);
  endShape(CLOSE);
  
  fill(150);
  beginShape();
  vertex(0          + PC_Offset_X, PC_Frame_Y + PC_Offset_Y);
  vertex(PC_Frame_X + PC_Offset_X, PC_Frame_Y + PC_Offset_Y);
  vertex(PC_Frame_X + PC_Offset_X, 0          + PC_Offset_Y);
  vertex(0          + PC_Offset_X, 0          + PC_Offset_Y);
  endShape(CLOSE);
  
  cross(mouseX, mouseY);
  
  int cross_x = mouseX - Cam_Offset_X;
  int cross_y = mouseY - Cam_Offset_Y;
  int temp_x = cross_x;
  int temp_y = cross_y;
  
  //NEW CODE
  cross_x = imageProjective.calc_x(temp_x, temp_y);
  cross_y = imageProjective.calc_y(temp_x, temp_y);
 
  cross(cross_x + PC_Offset_X, cross_y + PC_Offset_Y);
  
}

void cross(int x, int y)
{
 line(x-5, y, x+5, y);
 line(x, y-5, x, y+5);
}