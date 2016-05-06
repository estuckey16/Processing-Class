void setup() {
  size(750, 750);
  frameRate(120);
}

float size = 700;
float x = 0;
float deltaX = radians(0.025);
float stroke = 2;
float deltaStroke = 0;

void draw() {
 pushMatrix();
 translate(width/2, height/2);
 rotate(x);
 noStroke();
 strokeCap(SQUARE);
 fill(255);
 arc(0, 0, size, size, 0, PI/4);
 noFill();
 strokeWeight(stroke+deltaStroke);
 stroke(0);
 arc(0, 0, 31*size/32, 31*size/32, 0, PI/4);
 stroke(255);
 //arc(0, 0, 30*size/32, 30*size/32, 0, PI/4);
 stroke(0);
 arc(0, 0, 29*size/32, 29*size/32, 0, PI/4);
 stroke(255);
 //arc(0, 0, 28*size/32, 28*size/32, 0, PI/4);
 stroke(0);
 arc(0, 0, 27*size/32, 27*size/32, 0, PI/4);
 stroke(255);
 //arc(0, 0, 26*size/32, 26*size/32, 0, PI/4);
 
 noStroke();
 fill(255);
 arc(0, 0, size, size, PI/4, PI/2);
 stroke(0);
 noFill();
 arc(0, 0, 25*size/32, 25*size/32, PI/4, PI/2);
 stroke(255);
 //arc(0, 0, 24*size/32, 24*size/32, PI/4, PI/2);
 stroke(0);
 arc(0, 0, 23*size/32, 23*size/32, PI/4, PI/2);
 stroke(255);
 //arc(0, 0, 22*size/32, 22*size/32, PI/4, PI/2);
 stroke(0);
 arc(0, 0, 21*size/32, 21*size/32, PI/4, PI/2);
 stroke(255);
 //arc(0, 0, 20*size/32, 20*size/32, PI/4, PI/2);
 noStroke();
 fill(255);
 arc(0, 0, size, size, PI/2, 3*PI/4);
 stroke(0);
 noFill();
 arc(0, 0, 19*size/32, 19*size/32, PI/2, 3*PI/4);
 stroke(255);
 //arc(0, 0, 18*size/32, 18*size/32, PI/2, 3*PI/4);
 stroke(0);
 arc(0, 0, 17*size/32, 17*size/32, PI/2, 3*PI/4);
 stroke(255);
 //arc(0, 0, 16*size/32, 16*size/32, PI/2, 3*PI/4);
 stroke(0);
 arc(0, 0, 15*size/32, 15*size/32, PI/2, 3*PI/4);
 stroke(255);
 //arc(0, 0, 14*size/32, 14*size/32, PI/2, 3*PI/4);
 noStroke();
 fill(255);
 arc(0, 0, size, size, 3*PI/4, PI);
 stroke(0);
 noFill();
 arc(0, 0, 13*size/32, 13*size/32, 3*PI/4, PI);
 stroke(255);
 //arc(0, 0, 12*size/32, 12*size/32, 3*PI/4, PI);
 stroke(0);
 arc(0, 0, 11*size/32, 11*size/32, 3*PI/4, PI);
 stroke(255);
// arc(0, 0, 10*size/32, 10*size/32, 3*PI/4, PI);
 stroke(0);
 arc(0, 0, 9*size/32, 9*size/32, 3*PI/4, PI);
 stroke(255);
// arc(0, 0, 8*size/32, 8*size/32, 3*PI/4, PI);
 
 noStroke();
 fill(0);
 arc(0, 0, size, size, PI, 2*PI);
 
 popMatrix();
 x += deltaX;
 
}

void keyPressed() {
  println(key);
  if(key == '1') {
   deltaX += radians(0.0125); 
  }
  else if(key == '2') {
  deltaX -= radians(0.0125); 
  }
  else if (key == '3') {
   deltaStroke++; 
  }
  else if (key == '4' && deltaStroke > 1) {
   deltaStroke--; 
  }
}