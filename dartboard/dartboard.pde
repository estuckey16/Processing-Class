float x = 0;
float y = 0;
float w = 20;
float deltaX = .005;
float deltaY = .005;
float length = 650;
void setup() {
 size(700, 700);
 background(200, 0, 0);
 //noLoop();
 }

void draw() {
  strokeCap(SQUARE);
  background(200, 0, 0);
  fill(0);
  textSize(30);
  text("Dartboard", 10, 50);
 pushMatrix();
 translate(width/2, height/2);
 rotate(-y);
 // This section draws the pieces of the pie
 noStroke();
 fill(255);
 arc(0, 0, length, length, 0, PI/4);
 fill(0);
 arc(0, 0, length, length, PI/4, PI/2);
 fill(255);
 arc(0, 0, length, length, PI/2, 3*PI/4);
 fill(0);
 arc(0, 0, length, length, 3*PI/4, PI);
 fill(255);
 arc(0, 0, length, length, PI, 5*PI/4);
 fill(0);
 arc(0, 0, length, length, 5*PI/4, 3*PI/2);
 fill(255);
 arc(0, 0, length, length, 3*PI/2, 7*PI/4);
 fill(0);
 arc(0, 0, length, length, 7*PI/4, 2*PI);
 
 // This section draws the smaller arcs
 fill(0);
 arc(0, 0, 3*length/5, 3*length/5, 0, PI/4);
 fill(255);
 arc(0, 0, 3*length/5, 3*length/5, PI/4, PI/2);
 fill(0);
 arc(0, 0, 3*length/5, 3*length/5, PI/2, 3*PI/4);
 fill(255);
 arc(0, 0, 3*length/5, 3*length/5, 3*PI/4, PI);
 fill(0);
 arc(0, 0, 3*length/5, 3*length/5, PI, 5*PI/4);
 fill(255);
 arc(0, 0, 3*length/5, 3*length/5, 5*PI/4, 3*PI/2);
 fill(0);
 arc(0, 0, 3*length/5, 3*length/5, 3*PI/2, 7*PI/4);
 fill(255);
 arc(0, 0, 3*length/5, 3*length/5, 7*PI/4, 2*PI);
 popMatrix();
 
 pushMatrix();
 translate(width/2, height/2);
 rotate(x);
 //ellipse(0,0,10,10);
 
 
 strokeWeight(w);
 stroke(0, 255, 0); 
 noFill();
 // This section draws the outer borders 
 arc(0, 0, length, length, 0, PI/4);
 stroke(0, 0, 255);
 arc(0, 0, length, length, PI/4, PI/2);
 stroke(0, 255, 0);
 arc(0, 0, length, length, PI/2, 3*PI/4);
 stroke(0, 0, 255);
 arc(0, 0, length, length, 3*PI/4, PI);
 stroke(0, 255, 0);
 arc(0, 0, length, length, PI, 5*PI/4);
 stroke(0, 0, 255);
 arc(0, 0, length, length, 5*PI/4, 3*PI/2);
 stroke(0, 255, 0);
 arc(0, 0, length, length, 3*PI/2, 7*PI/4);
 stroke(0, 0, 255);
 arc(0, 0, length, length, 7*PI/4, 2*PI);
 
 // This section draws the inner borders
 stroke(0, 0, 255);
 arc(0, 0, 3*length/5, 3*length/5, 0, PI/4);
 stroke(0, 255, 0);
 arc(0, 0, 3*length/5, 3*length/5, PI/4, PI/2);
 stroke(0, 0, 255);
 arc(0, 0, 3*length/5, 3*length/5, PI/2, 3*PI/4);
 stroke(0, 255, 0);
 arc(0, 0, 3*length/5, 3*length/5, 3*PI/4, PI);
 stroke(0, 0, 255);
 arc(0, 0, 3*length/5, 3*length/5, PI, 5*PI/4);
 stroke(0, 255, 0);
 arc(0, 0, 3*length/5, 3*length/5, 5*PI/4, 3*PI/2);
 stroke(0, 0, 255);
 arc(0, 0, 3*length/5, 3*length/5, 3*PI/2, 7*PI/4);
 stroke(0, 255, 0);
 arc(0, 0, 3*length/5, 3*length/5, 7*PI/4, 2*PI);
 
 popMatrix();
 x+= deltaX;
 y+= deltaY;
}

void keyPressed(){
  println(key);
  if (key == '1') {
    deltaX += .005;
  }
  else if (key == '!' && deltaX > 0.005) {
    println(deltaX);
    deltaX -= .005;
  }
  else if (key == '2') {
    deltaY += .005;
  }
  else if (key == '@' && deltaY > .005) {
    deltaY -= .005;
  }
  else if (key == '3') {
    println(w);
    w++;
  }
  else if (key == '#' && w > 2) {
    println(w);
    w--;
  }
}