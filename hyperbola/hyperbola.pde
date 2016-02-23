void setup() {
 size(600, 600);
 background(255);
 frameRate(5);
}

float r = 50; //radius
float x = random(100 + width/3);    // Picks a random x coordinate for the point P
float y = random(100 + height/3);  // Picks a random y coordinate for the point P
float circleCenterX = 0;
float circleCenterY = 0;
float diameter = r*2;              // Diameter of point P
int numLines = 20;
float delta = 5;                // Number by which the x increases between draw loops
float x2 = circleCenterX-r;                  // x2 starts at zero
float pX = -r;
float y2 = sqrt((r * r) - (x2 * x2));      // calculates the y value for the initial point
float y3 = -sqrt((r * r) - (x2 * x2));
void draw() {

  pushMatrix();
  
  translate(width/2, height/2);    // Moves the matrix to the center of the screen
  noFill();
  ellipse(0, 0, 10, 10);
  ellipse(x, y, 10, 10);
  //ellipse(x2, y2, 5, 5);
 //ellipse(x2, y3, 10, 10);
  strokeWeight(1);
    
  float midX = (x2 + x) / 2;    // Gets the x coordinate of the midpoint between the two lines
  float midY = (y2 + y) / 2;    // Gets the y coordinate of the midpoint
  float slope = -((x2 - x)/(y2 - y));    // The slope of the line perpendicular to the line between point R and point P
  float b1 = midY - (slope * midX);    // Calculates the y intercept
  float b2 = (slope * width) + b1;      // calculates the y value for the point at width
  float b3 = (slope * -width) + b1;      // Calculate the y value for th point at -width
  
        midX = (x2 + x) / 2;    // Gets the x coordinate of the midpoint between the two lines
  float midY2 = (y3 + y) / 2;    // Gets the y coordinate of the midpoint
  float slope2 = -((x2 - x)/(y3 - y));    // The slope of the line perpendicular to the line between point R and point P
  float b12 = midY2 - (slope2 * midX);    // Calculates the y intercept
  float b22 = (slope2 * width) + b12;      // calculates the y value for the point at width
  float b32 = (slope2 * -width) + b12;
  
  //if (x2 >= r+1){
 line(-width, b3, width, b2);          // If the x2 is greater than the radius, draw the line
 line(-width, b32, width, b22);   
  //}
   
 /*   // Changes the x value
  if (x2 == diameter || x2 == -diameter) {  
    pX = -pX;
  }
  if (pX == r) {
    x2 -= delta;
  }
  if (pX == -r){
    x2 += delta;
  }
*/
if (x2 <= r) x2+=delta;
  y2 = sqrt((((r * r) - (x2 * x2))));
  y3 = -sqrt((r * r) - (x2 * x2));

  //if(((r*r) - (x2 *x2))<0){
  //  y2 = y2*-1;
  //}
  
  if(x2 >= r){
   background(255);
   stroke(random(256), random(256), random(256));
   x2 = -r;
    
  }

  popMatrix();
  
}