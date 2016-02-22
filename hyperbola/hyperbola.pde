void setup() {
 size(600, 600); 
}

float r = 20;
float x = 0; //random(width/2 + 400);
float y = -40; //random(height/2 + 400);
float diameter = 40;
int numLines = 200;
float delta = 1;
void draw() {
 
  pushMatrix();
  translate(width/2, height/2);
  strokeWeight(1);
  ellipse(0, 0, diameter, diameter);
  float x2 = -r;
  float pX = -r;
  float y2 = sqrt((r * r) - (x2 * x2));
 
  for(int index = 0; index < numLines; index++){
    float midX = (x2 - x) / 2;    // Gets the x coordinate of the midpoint between the two lines
    float midY = (y2 - y) / 2;
    float slope = -((x2 - x)/(y2 - y));    // The slope of the line perpendicular to the line between point R and point P
    float b1 = midY - (slope * midX);
    float b2 = (slope * width/2) + b1;
    line(0, b1, width, b2);
    
    if (x2 == diameter || x2 == -diameter) {
      pX = x2;
    }
    if (pX == r) {
      x2 -= delta;
    }
    if (pX == -r){
      x2 += delta;
    }
    y2 = sqrt(abs(((r * r) - (x2 * x2))));
   
    
    
    
  }
  popMatrix();
  
  
  
}