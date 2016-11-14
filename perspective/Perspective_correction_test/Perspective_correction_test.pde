/**
 * Regular Polygon
 * 
 * What is your favorite? Pentagon? Hexagon? Heptagon? 
 * No? What about the icosagon? The polygon() function 
 * created for this example is capable of drawing any 
 * regular polygon. Try placing different numbers into the 
 * polygon() function calls within draw() to explore. 
 */
#include "genImageProjective.h"


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



void setup() {
  size(1500, 900);
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
  
  
  
  int cross_x = mouseX - Cam_Offset_X + PC_Offset_X;
  int cross_y = mouseY - Cam_Offset_Y + PC_Offset_Y;
  cross(cross_x, cross_y);
  
}

void cross(int x, int y)
{
 line(x-5, y, x+5, y);
 line(x, y-5, x, y+5);
}