float x = 0;
float deltaX = radians(0.025);
void setup() {
 size(800, 800);
 frameRate(500);
 
}

void draw() {
  background(0);
 pushMatrix();
 translate(width/2, height/2);
 rotate(x);
 noStroke();
 fill(255, 0, 0);//RED
 arc(0, 0, 2*width/3, 2*width/3, 0, PI/6);
 fill(255, 125, 0);//ORANGE
 arc(0, 0, 2*width/3, 2*width/3, PI/6, PI/3);
 fill(255, 255, 0);//YELLOW
 arc(0, 0, 2*width/3, 2*width/3, PI/3, PI/2);
 fill(125, 255, 0);//SPRING
 arc(0, 0, 2*width/3, 2*width/3, PI/2, 2*PI/3);
 fill(0, 255, 0); //GREEN
 arc(0, 0, 2*width/3, 2*width/3, 2*PI/3, 5*PI/6);
 fill(0, 255, 125); //TURQUOISE
 arc(0, 0, 2*width/3, 2*width/3, 5*PI/6, PI);
 fill(0, 255, 255); //Cyan
 arc(0, 0, 2*width/3, 2*width/3, PI, 7*PI/6);
 fill(0, 125, 255); //OCEAN
 arc(0, 0, 2*width/3, 2*width/3, 7*PI/6, 8*PI/6);
 fill(0, 0, 255); //
 arc(0, 0, 2*width/3, 2*width/3, 8*PI/6, 9*PI/6);
 fill(125, 0, 255);
 arc(0, 0, 2*width/3, 2*width/3, 9*PI/6, 10*PI/6);
 fill(255, 0, 255);
 arc(0, 0, 2*width/3, 2*width/3, 10*PI/6, 11*PI/6);
 fill(255, 0, 125);
 arc(0, 0, 2*width/3, 2*width/3, 11*PI/6, 12*PI/6);
 
 popMatrix();
 x += deltaX;
}

void keyPressed() {
  println(key);
  if (key == '1') {
    deltaX += radians(0.0125);
  }
  else if (key == '2') {
    deltaX -= radians(0.0125);
  }
  }