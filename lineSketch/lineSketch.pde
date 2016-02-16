void setup() {
  size(1000, 700);
  background(255);
}

void draw() {
  noCursor();
  stroke(random(255), random(255), random(255));
  strokeWeight(random(15));
  
  //line(mouseX, mouseY, width/2, height/2);
  
  line(pmouseX, pmouseY, mouseX, mouseY);
  
}

void mousePressed(){
  background(255);
}