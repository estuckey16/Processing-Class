void setup() {
 size(600, 600);
 background(255);
}

float r = 20; //radius
float x = random(width/2);
float y = random(height/2);
float diameter = 40;
int numLines = 2000;
float delta = .5;
float x2 = -r;
float pX = -r;
float y2 = sqrt((r * r) - (x2 * x2));
void draw() {
 
  pushMatrix();
  translate(width/2, height/2);
  strokeWeight(1);
  
  
 
  
  float midX = (x2 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
  float midY = (y2 - y) / 2;
  float slope = -((x2 - x)/(y2 - y));    // The slope of the line perpendicular to the line between point R and point P
  float b1 = midY - (slope * midX);
  float b2 = (slope * width) + b1;
  float b3 = (slope * -width) + b1;
  if (x2 >= r+1){
  line(-width, b3, width, b2);
  }
   
    
  if (x2 == diameter || x2 == -diameter) {
    pX = -pX;
  }
  if (pX == r) {
    x2 -= delta;
  }
  if (pX == -r){
    x2 += delta;
  }

  y2 = sqrt(abs(((r * r) - (x2 * x2))));
  if(((r*r) - (x2 *x2))<0){
    y2 = y2*-1;
  }
  
  if(x2 > width){
    background(255);
    stroke(random(256), random(256), random(256));
    x2 = -r;
    
  }
 
  
  //x2 = -r;
  //y2 = sqrt((r * r) - (x2 * x2));
  //for(int index = 0; index < numLines; index++){
  // float midX = (x2 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
  // float midY = (y2 - y) / 2;
  // float slope = -((x2 - x)/(y2 - y));    // The slope of the line perpendicular to the line between point R and point P
  // float b1 = midY - (slope * midX);
  // float b2 = (slope * width) + b1;
  // float b3 = (slope * -width) + b1;
  // if (x2 >= r+1){
  // line(-width, -b2, width, -b3);
  // }
   
    
  // if (x2 == diameter || x2 == -diameter) {
  //   pX = -pX;
  // }
  // if (pX == r) {
  //   x2 -= delta;
  // }
  // if (pX == -r){
  //   x2 += delta;
  // }

  // y2 = sqrt(abs(((r * r) - (x2 * x2))));
  // if(((r*r) - (x2 *x2))<0){
  //   y2 = y2*-1;
  // }
  //}
  popMatrix();
  
}