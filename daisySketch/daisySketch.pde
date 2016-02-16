void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  stroke(random(255), random(255), random(255));
  strokeWeight(random(15));
  
  line(mouseX, mouseY, width/2, height/2);
  
  //line(pmouseX, pmouseY, mouseX, mouseY);
  
}

void mousePressed(){
  background(255);
}