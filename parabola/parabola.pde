void setup() {
 size(1000, 700); 
}

float x = random(0, width);    // Creates a random x coordinate for point P
float y = random(0, height);    // Creates a random y coordinate for point P

int numLines = 200000;    // the number of lines on half of the parabola
float delta = 5;    // the number of units to move for each x
int x3 = 0;
int y3 = 0;
void draw() {
  
  
  
  point(x, y);    // Draws the point that the lines will follow
  
  
    
    float midX = (x3 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
    float midY = (y3 - y) / 2;    // Gets the y coordinate of the midpoint between the two lines
    float slope = -((x3 - x)/(y3 - y));    // The slope of the line perpendicular to the line between point R and point P
    float b1 = midY - (slope * midX);
    float b2 = (slope * width) + b1;
    line(0 + width/2, b1 + height/2, width + width/2, b2 + height/2);
    
 
   
    float midX2 = (x3 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
    float midY2 = (y3 - y) / 2;    // Gets the y coordinate of the midpoint between the two lines
    float slope2 = -((x3 - x)/(y3 - y));    // The slope of the line perpendicular to the line between point R and point P
    float b12 = midY - (slope * midX);
    float b22 = (slope * width) + b1;
    line(0 - width/2, b2 + height/2, width - width/2, b1 + height/2);
    x3 += delta;
 
  if(x3 > width + (width / 2)) x3 = 0;
  if(y3 > height + (height /2)) y3 = 0;
  
}   