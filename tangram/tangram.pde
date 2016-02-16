// Tangrams
//WebApps:2016:2ndSemester:02Feb
//Ellie Stuckey
//Creates a horse using tangram pieces. When mouse goes over
//shapes, the shape gets bigger and changes color.

void setup() {
  size(500, 500);  //sets canvas size
}

void draw() {
  background(#C1DFFF);
  fill(#33B951);
  rect(0, 375, width, height-375);
  
  //draws sun
  fill(#F9FA12);
  ellipse(50, 50, 100, 100);
  //
  
  fill(#895507);
  noStroke();
    
  // draws head of horse
  triangle(400/2, 100/2, 260/2, 240/2, 540/2, 240/2);
  
  // draws square
  rect(403/2, 244/2, 140/2, 140/2);
  
  // draws big triangle
  triangle(543/2, 384/2, 260/2, 384/2, 543/2, 664/2);
  
  // draws small triangle
  triangle(256/2, 385/2, 356/2, 485/2, 156/2, 485/2);
  
  // draws second big triangle
  triangle(543/2, 384/2, 543/2, 784/2, 743/2, 584/2);
  
  // draws foot of horse
  triangle(543/2, 784/2, 403/2, 924/2, 543/2, 924/2);
  
  // draws tail
  quad(743/2, 584/2, 842/2, 689/2, 803/2, 769/2, 708/2, 664/2);
  
  // creates the larger triangles if the mouse is within the space
  
  //small triangle at head
  if (mouseX >= 260/2 && mouseX <= 540/2 && mouseY >= 100/2 && mouseY <= 240/2) {
    fill(#41044D);
    triangle(400/2, 00, (260 - 50) / 2, (240 + 50)/2, (540 + 50)/2, (240 + 50)/2);
    println("Head Triangle:" + distanceFinder(400/2, 0, 260/2, 240/2));
    println("Head Triangle:" + distanceFinder(400/2, 0, 540/2, 240/2));
    println("Head Triangle:" + distanceFinder(260/2, 240/2, 540/2, 240/2));
    println("Head Triangle:" + tangentFinder(400/2, 0, 260/2, 240/2, 540/2, 240/2));
  }
  
  // square neck
  if (mouseX >= 400/2 && mouseX <= 540/2 && mouseY >= 240/2 && mouseY <= 380/2) {
    fill(#5F0671);
    ;
    rect((400 - 25) / 2, (240 - 25) /2, 190/2, 190/2);
    // due to the way the rectangle was constructed, the sides are automatically the same and the angle is automatically 90 degrees
    
  }
  // by side side side, they are correct
  // big triangle in body
  if (mouseX >= 270/2 && mouseX <= 543/2 && mouseY >= 350/2 && mouseY <= 664/2) {
    fill(#8F09AA);
    triangle((543 + 50)/2, (384 - 50)/2, (260 -50)/2, (384 - 50)/2, (543 + 50)/2, (664 + 50)/2);
    
    println("Body Triangle:" + distanceFinder(543/2, 384/2, 260/2, 384/2));
    println("Body Triangle:" + distanceFinder(543/2, 384/2, 543/2, 664/2));
    println("Body Triangle:" + distanceFinder(260/2, 384/2, 543/2, 664/2));
    println("Body Triangle:" + tangentFinder(543/2, 384/2, 260/2, 384/2, 543/2, 664/2));
    
   
  }
  //correct using side side side
  // small triangle in top hoof
  if (mouseX >= 156/2 && mouseX <= 356/2 && mouseY >= 385/2 && mouseY <= 485/2) {
    fill(#BA0DDE);
    triangle(256/2, (385 - 50)/2, (356 + 50)/2, (485 + 50)/2, (156 - 50)/2, (485 + 50)/2);
    
    
    
    println("Hoof Triangle:" + distanceFinder(256/2, 385/2, 356/2, 485/2));
    println("Hoof Triangle:" + distanceFinder(250/2, 356/2, 156/2, 462/2));
    println("Hoof Triangle:" + distanceFinder(356/2, 458/2, 156/2, 485/2));
    println("Hoof Triangle:" + tangentFinder(256/2, 385/2, 356/2, 485/2, 156/2, 485/2));
    
    
  }
  
  // 2nd big triangle in body
  if (mouseX >= 543/2 && mouseX <= 743/2 && mouseY >= 384/2 && mouseY <= 784/2) {
    fill(#C807F0);
    triangle((543 - 50)/2, (384 - 50)/2, (543 - 50)/2, (784 + 50)/2, (743 + 50)/2, 584/2);
    
    
    
    println("Butt Triangle:" + distanceFinder(543/2, 384/2, 543/2, 784/2));
    println("Butt Triangle:" + distanceFinder(543/2, 384/2, 743/2, 584/2));
    println("Butt Triangle:" + distanceFinder(543/2, 784/2, 743/2, 584/2));
    println("Butt Triangle:" + tangentFinder(543/2, 384/2, 543/2, 784/2, 803/2, 594/2));
    
  }
  // using side side side, the angles are 45 45 and 90
  // draws foot 
  if (mouseX >= 403/2 && mouseX <= 543/2 && mouseY >= 784/2 && mouseY <= 924/2) {
    fill(#D71FFC);
    triangle((543 + 50)/2, (784 - 50)/2, (403 - 50)/2, (924 +20)/2, (543 + 50)/2, (924 + 20)/2);
    
    println("Foot Triangle:" + distanceFinder(543/2, 784/2, 403/2, 924/2));
    println("Foot Triangle:" + distanceFinder(543/2, 784/2, 543/2, 924/2));
    println("Foot Triangle:" + distanceFinder(403/2, 924/2, 543/2, 924/2));
    println("Foot Triangle:" + tangentFinder(543/2, 784/2, 403/2, 924/2, 543/2, 924/2));
    
  }
  //
  // lengths and angles are correct for this shape now
  // draws tail
  if (mouseX >= 745/2 && mouseX <= 838/2 && mouseY >= 584/2 && mouseY <= 769/2) {
    fill(#DD4EFA);
    quad((745 )/2, (584 - 70)/2, (838+50)/2, (689)/2, (803 )/2, (769 + 70)/2, (708 - 50)/2, 664/2);
    
    //745/2, 584/2, 838/2, 689/2, 803/2, 769/2, 708/2, 664/2
    println("Tail Parallelogram:" + distanceFinder(743/2, 584/2, 842/2, 689/2));
    println("Tail Parallelogram:" + distanceFinder(838/2, 689/2, 809/2, 769/2));
    println("Tail Parallelogram:" + distanceFinder(809/2, 769/2, 708/2, 664/2));
    println("Tail Parallelogram:" + distanceFinder(714/2, 664/2, 745/2, 584/2));
    
  }
  
}

// uses the distance formula to find the length of the line segment
float distanceFinder(int x1, int y1, int x2, int y2){
  float distance = sqrt(sq(x2 - x1) + sq(y2 - y1));  
  return distance;
}

// finds the inverse tangent of the side lengths and converts to degrees
float tangentFinder(int x1, int y1, int x2, int y2, int x3, int y3){
  float tangent = atan(distanceFinder(x1, y1, x2, y2) / distanceFinder(x1, y1, x3, y3)) * (180/PI); 
  return tangent;
}