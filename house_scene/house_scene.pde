//House Drawing Sketch
//Web Applications:2016:2ndSemester:02Feb
//Ellie Stuckey
//This code draws a house scene using basic shapes and 
//uses basic movement to move clouds across the screen.

int x = -200; // controls x placement for the clouds
void setup() {
  size(1000, 700);  // sets size of frame
}

void draw() {
  noStroke();
  background(0, 185, 255);
  
  // draws ground
  fill(150, 255, 120);  // fills in green ellipse
  ellipse(500, height, width * 3.5, 800);
  
  // draws base of house
  fill(247, 76, 7);
  rect(100, 325, 225, 100);

  //draws side of the house
  fill(247, 76, 7);
  quad(325, 325, 325, 425, 375, 375, 375, 275);
 
  fill(247, 76, 7);
  triangle(350, 250, 325, 325, 375, 275);
  
  //draws roof
  fill(77, 41, 4);
  quad(125, 250, 80, 340, 325, 340, 355, 250); 
  
  fill(77, 41, 4);
  quad(352, 250, 375, 275, 383, 275, 360, 250);
  
  // draws two small windows
  fill(255);
  rect(125, 360, 40, 45);
  rect(255, 360, 40, 45);
  
  // draws bigger window
  rect(180, 360, 60, 45);
  
  // draws clouds
  fill(255);
  x ++;
  ellipse(x, 100, 150, 50);
  ellipse(x+155, 200, 100, 50);
  if(x > width + 100) x = -40;
  
  // draws base of tree
  fill(127, 87, 59);
  rect(800, 350, 100, 300);

  // draws top of tree
  fill(26, 91, 32);
  ellipse(850, 250, 350, 250);
   
}