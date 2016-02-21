void setup() {
 size(1000, 700); 
}

float x = random(0, width);    // Creates a random x coordinate for point P
float y = random(0, height);    // Creates a random y coordinate for point P

int numLines = 20000;    // the number of lines on half of the parabola
float delta = 5;    // the number of units to move for each x

void draw() {
  background(255);
  int x2 = width;    // Creates a starting point for the parabola lines
  int y2 = height;   // Creates a startint point for the parabola lines
  
  point(x, y);    // Draws the point that the lines will follow
  
  //for(int index = 0; index <= numLines; index++) {
  // float midX = (x2 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
  // float midY = (y2 - y) / 2;    // Gets the y coordinate of the midpoint between the two lines
  // float slope = -((x2 - x)/(y2 - y));    // The slope of the line perpendicular to the line between point R and point P
  // float b1 = midY - (slope * midX);
  // float b2 = (slope * width) + b1;
  // line(0 +width/2, b1 + height/2, width + width/2, b2 + height/2);
  // x2 -= delta;
  //}
  
  int x3 = 0;
  int y3 = 0;
 for(int index = numLines; index >= 0; index--) {
   
    float midX = (x3 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
    float midY = (y3 - y) / 2;    // Gets the y coordinate of the midpoint between the two lines
    float slope = -((x3 - x)/(y3 - y));    // The slope of the line perpendicular to the line between point R and point P
    float b1 = midY - (slope * midX);
    float b2 = (slope * width) + b1;
    line(0 + width/2, b1 + height/2, width + width/2, b2 + height/2);
    x3 += delta;
  }
  x3 = 0;
  y3 = 0;
  for(int index = numLines; index >= 0; index--) {
   
    float midX = (x3 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
    float midY = (y3 - y) / 2;    // Gets the y coordinate of the midpoint between the two lines
    float slope = -((x3 - x)/(y3 - y));    // The slope of the line perpendicular to the line between point R and point P
    float b1 = midY - (slope * midX);
    float b2 = (slope * width) + b1;
    line(0 - width/2, b2 + height/2, width - width/2, b1 + height/2);
    x3 += delta;
  }
  
  
}   