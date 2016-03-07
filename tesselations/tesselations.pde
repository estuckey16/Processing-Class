float WIDTH = 1500;
float HEIGHT = 700;

float rectWidth = 150;
float rectHeight = 150;

float rotator = 0;
float rotator2 = 0;
float rotator3 = 0;
float rotator4 = 0;

float colorR1 = random(1, 256);
float colorG1 = random(1, 256);
float colorB1 = random(1, 256);

float colorR2 = random(1, 256);
float colorG2 = random(1, 256);
float colorB2 = random(1, 256);

float colorR3 = random(1, 256);
float colorG3 = random(1, 256);
float colorB3 = random(1, 256);

float colorR4 = random(1, 256);
float colorG4 = random(1, 256);
float colorB4 = random(1, 256);


void setup() {
  size(1500, 700);
  //noFill();
  frameRate(360);
  strokeWeight(0.5);
}

void draw() {
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// This section draws the first tessellation sheet
  pushMatrix();
  translate(WIDTH/2, HEIGHT/2);
  rotate(rotator);
  background(204);
  fill(colorR1, colorG1, colorB1, random(10, 40));
  for (float rows = -HEIGHT/65; rows < HEIGHT/65; rows++) {

    for (float index = -WIDTH/65; index < WIDTH/65; index++) {
      pushMatrix(); 
        translate((index * 85), rows * 85); 
        rotate(radians(45)); 
        rect(5, 5, rectWidth, rectHeight);
        hexagon(50);
        popMatrix();
    }
  }
  
  popMatrix();
  rotator += (PI/12);
  
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
// This section draws the second tessallation sheet
pushMatrix();
translate(WIDTH/2, HEIGHT/2);
rotate(rotator2);
fill(colorR2, colorG2, colorB2, random(1, 40));
for (float rows = -HEIGHT/65; rows < HEIGHT/75; rows++) {

for (float index = -WIDTH/65; index < WIDTH/65; index++) {
  pushMatrix(); 
    translate((index) * (85), rows * (85)); 
    rotate(radians(45)); 
    rect(5, 5, rectWidth, rectHeight);
    hexagon(50);

    popMatrix();
}
}
  
popMatrix();
rotator2 += (PI/48);
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// This section draws the third tessalation sheet
pushMatrix();
translate(WIDTH/2, HEIGHT/2);
rotate(rotator3);
fill(colorR3, colorG3, colorB3, random(1, 40));
for (float rows = -WIDTH/65; rows < HEIGHT/65; rows++) {

for (float index = -WIDTH/65; index < WIDTH/65; index++) {
  pushMatrix(); 
    translate((index) * 85, rows * (85)); 
    rotate(radians(45)); 
    rect(5, 5, rectWidth, rectHeight);
    hexagon(50);
    popMatrix();
}
}
  
popMatrix();
rotator3 += (PI/192);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// This section draws the third tessalation sheet
pushMatrix();
translate(WIDTH/2, HEIGHT/2);
rotate(rotator3);
fill(colorR4, colorG4, colorB4, random(1, 40));
for (float rows = -WIDTH/65; rows < HEIGHT/65; rows++) {

for (float index = -WIDTH/65; index < WIDTH/65; index++) {
  pushMatrix(); 
    translate((index) * 85, rows * 85); 
    rotate(radians(45)); 
    rect(5, 5, rectWidth, rectHeight);
    hexagon(50);

    popMatrix();
}
}
  
popMatrix();
rotator3 += (PI/12);

}