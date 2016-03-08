float WIDTH = 1500;
float HEIGHT = 700;

float rectWidth = 150;
float rectHeight = 150;

float rotator = 0;
float rotator2 = 0;
float rotator3 = 0;
float rotator4 = 0;
float rotator5 = 0;

float rotatorChange  = 24;
float rotatorChange2 = 48;
float rotatorChange3 = 60;
float rotatorChange4 = 12;
float rotatorChange5 = 3;

float rotatorChangeClone = PI/24;
float rotatorChange2Clone = PI/48;
float rotatorChange3Clone = PI/192;
float rotatorChange4Clone = PI/12;
float rotatorChange5Clone = PI/300;

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

float colorR5 = random(1, 256);
float colorG5 = random(1, 256);
float colorB5 = random(1, 256);

boolean runMe = true;

void setup() {
  size(1500, 700);
  //noFill();
  frameRate(60);
  noStroke();
}

void draw() {
  if (runMe == true) {
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // This section draws the first tessellation sheet
    pushMatrix();
    translate(WIDTH/2, HEIGHT/2);
    rotate(rotator);
    if (frameCount % 300 == 0) {
      background(255);
    }
    fill(colorR1, colorG1, colorB1, random(10, 100));
    for (float rows = -HEIGHT/65; rows < HEIGHT/65; rows++) {

      for (float index = -WIDTH/65; index < WIDTH/65; index++) {
        pushMatrix(); 
        translate((index * 85), rows * 85); 
        rotate(radians(0)); 
        //rect(5, 5, rectWidth, rectHeight);
        hexagon(50);
        popMatrix();
      }
    }

    popMatrix();
    rotator += (rotatorChange);

    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
    // This section draws the second tessallation sheet
    pushMatrix();
    translate(WIDTH/2, HEIGHT/2);
    rotate(rotator2);
    fill(colorR2, colorG2, colorB2, random(1, 100));
    for (float rows = -HEIGHT/65; rows < HEIGHT/75; rows++) {

      for (float index = -WIDTH/65; index < WIDTH/65; index++) {
        pushMatrix(); 
        translate((index) * (85), rows * (85)); 
        rotate(radians(30)); 
        //rect(5, 5, rectWidth, rectHeight);
        hexagon(50);

        popMatrix();
      }
    }

    popMatrix();
    rotator2 -= (rotatorChange2);
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // This section draws the third tessalation sheet
    pushMatrix();
    translate(WIDTH/2, HEIGHT/2);
    rotate(rotator3);
    fill(colorR3, colorG3, colorB3, random(1, 100));
    for (float rows = -WIDTH/65; rows < HEIGHT/65; rows++) {

      for (float index = -WIDTH/65; index < WIDTH/65; index++) {
        pushMatrix(); 
        translate((index) * 85, rows * (85)); 
        rotate(radians(60)); 
        //rect(5, 5, rectWidth, rectHeight);
        hexagon(50);
        popMatrix();
      }
    }

    popMatrix();
    rotator3 += (rotatorChange3);

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // This section draws the fourth tessalation sheet
    pushMatrix();
    translate(WIDTH/2, HEIGHT/2);
    rotate(rotator3);
    fill(colorR4, colorG4, colorB4, random(1, 100));
    for (float rows = -WIDTH/65; rows < HEIGHT/65; rows++) {

      for (float index = -WIDTH/65; index < WIDTH/65; index++) {
        pushMatrix(); 
        translate((index) * 85, rows * 85); 
        rotate(radians(90)); 
        //rect(0, 0, rectWidth, rectHeight);
        hexagon(50);

        popMatrix();
      }
    }

    popMatrix();
    rotator4 -= (rotatorChange4);

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // This section draws the fifth tessalation sheet
    pushMatrix();
    translate(WIDTH/2, HEIGHT/2);
    rotate(rotator3);
    fill(colorR5, colorG5, colorB5, random(1, 40));
    for (float rows = -WIDTH/65; rows < HEIGHT/65; rows++) {

      for (float index = -WIDTH/65; index < WIDTH/65; index++) {
        pushMatrix(); 
        translate((index) * 85, rows * 85); 
        rotate(radians(45)); 
        rect(0, 0, rectWidth, rectHeight);
        //hexagon(50);

        popMatrix();
      }
    }

    popMatrix();
    rotator5 += (rotatorChange5);
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////
  if (keyPressed) {
    println(key);
    if (key == '1') {
      rotatorChange *= 40;
    } else if (key == '2') {
      rotatorChange2 *= 60;
    } else if (key == '3') {
      rotatorChange3 *= 30;
    } else if (key == '4') {
      rotatorChange4 *= 20;
    } else if (key == '5') {
      rotatorChange5 *= 20;
      println(key);
      println(rotatorChange5);
    } else if (key == '!') {
      if (rotatorChange > 0.01) {
        rotatorChange /= 40;
      }
    } else if (key == '@') {
      if (rotatorChange2 > 0.01) {
        rotatorChange2 /= 60;
      }
    } else if (key == '#') {
      if (rotatorChange3 > 0.01) {
        rotatorChange3 /= 30;
      }
    } else if (key == '$') {
      if (rotatorChange4 > 0.01) {
        rotatorChange4 /= 40;
      }
    } else if (key == '%') {
      if (rotatorChange5 > 0.01) {
        rotatorChange5 /= 30;
        println("key");
      }
    } else if (key == 's') {
      runMe = true;
    } else if (key == 'd') {
      runMe = false;
    } else if (key == '0') {
      rotatorChange = rotatorChangeClone;
      rotatorChange2 = rotatorChange2Clone;
      rotatorChange3 = rotatorChange3Clone;
      rotatorChange4 = rotatorChange4Clone;
      rotatorChange5 = rotatorChange5Clone;
    }
  }
}