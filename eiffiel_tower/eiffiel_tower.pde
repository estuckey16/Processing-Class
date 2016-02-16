// Project: tangram Eiffel Tower
// WebApps:2016:2ndSemester:04Feb
// Ellie Stuckey
// Creates the Eiffel Tower using tangrams and changes their color randomly

float x = 0;
float y = 50;
float z = 100;
float x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18 = 255;
float y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16, y17, y18 = 255;
float z1, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12, z13, z14, z15, z16, z17, z18 = 255;

void setup() {
  size(344, 600);
  frameRate(2);
}

void draw() {
  
    // This section draws the tower
  
  // draws small triangle
  triangle(171, 45, 147, 69, 195, 69);
  
  // draws square
  quad(155, 103, 189, 103, 189, 69, 155, 69);
  
   // draws square
  quad(155, 137, 189, 137, 189, 103, 155, 103);
  
   // draws small triangle
  triangle(195, 160, 171, 137, 219, 137);
  
  // draws parallelogram
  quad(148, 160, 195, 160, 171, 137, 124, 137);
  
  // draws parallelogram
  quad(148, 160, 195, 160, 171, 137, 124, 137);
  
   // draws medium triangle
  triangle(195, 207, 148, 160, 195, 160);
  
   // draws big triangle
  triangle(148, 254, 195, 207, 148, 160);
  
    // draws big triangle
  triangle(195, 301, 148, 254, 195, 207);
  
  // draws big triangle
  triangle(148, 348, 195, 301, 148, 254);
  
  // draws big triangle
  triangle(195, 395, 148, 348, 195, 301);

  // draws medium triangle
  triangle(148, 395, 195, 395, 148, 348);
  
  
  // This section draws the mid section of the tower.
  
  // draws square
  quad(219, 429, 185, 429, 185, 395, 219, 395);
  
  // draws square
  quad(124, 429, 158, 429, 158, 395, 124, 395);
  
  // draws small triangle
  triangle(219, 463, 219, 429, 185, 429);
  
    // draws small triangle
  triangle(124, 463, 124, 429, 158, 429);
  
    // draws big triangle
  triangle(219, 463, 124, 463, 172, 416);
  
  
  //This section draws from the bottom left leg to the center
  
  // draws big triangle
  triangle(277, 533, 277, 600, 344, 600);
  
  // draws parallelogram
  quad(243, 533, 277, 567, 277, 533, 243, 499);
  
  // draws medium triangle
  triangle(196, 486, 243, 486, 243, 533);
  
  // draws small triangle
  triangle(243, 486, 219, 463, 267, 463);
  
  // draws parallelogram
  quad(196, 486, 243, 486, 219, 463, 172, 463);
  
  // draws big triangle
  triangle(172, 463, 125, 510, 219, 510);
  
   // draws small triangle
  triangle(148, 486, 124, 463, 172, 463);
  
  // draws parallelogram
  quad(101, 486, 148, 486, 124, 463, 77, 463);
  
  // draws medium triangle
  triangle(101, 533, 101, 486, 148, 486);
  
   // draws small triangle
  triangle(67, 533, 101, 533, 101, 499);  
  
  // draws small triangle
  triangle(67, 533, 67, 567, 101, 533);
  
  // draws big triangle
  triangle(0, 600, 67, 600, 67, 533);
   
   
   
   
   
  
  if (mouseX >= 147 && mouseX <= 195 && mouseY >= 45 && mouseY <= 69) {
    //This section draws from the bottom left leg to the center
  x = random(1, 256);
  y = random(1, 256);
  z = random(1, 256);
  
   // This section draws the tower
   
  fill(x, y, z);
  // draws small triangle
  triangle(171, 45, 147, 69, 195, 69);
  
  fill(x1, y1, z1);
  // draws square
  quad(155, 103, 189, 103, 189, 69, 155, 69);
  
  fill(x2, y2, z2);
  // draws square
  quad(155, 137, 189, 137, 189, 103, 155, 103);
  
  fill(x3, y3, z3);
  // draws small triangle
  triangle(195, 160, 171, 137, 219, 137);
  
  fill(x4, y4, z4);
  // draws parallelogram
  quad(148, 160, 195, 160, 171, 137, 124, 137);
  
  fill(x5, y5, z5);
  // draws medium triangle
  triangle(195, 207, 148, 160, 195, 160);
  
   fill(x6, y6, z6);
  // draws big triangle
  triangle(148, 254, 195, 207, 148, 160);
  
  fill(x7, y7, z7);
  // draws big triangle
  triangle(195, 301, 148, 254, 195, 207);
  
  fill(x8, y8, z8);
  // draws big triangle
  triangle(148, 348, 195, 301, 148, 254);
  
  fill(x9, y9, z9);
  // draws big triangle
  triangle(195, 395, 148, 348, 195, 301);
  
  fill(x10, y10, z10);
  // draws medium triangle
  triangle(148, 395, 195, 395, 148, 348);
  
  // This section draws the mid section of the tower.
  fill(x11, y11, z11);
  // draws square
  quad(219, 429, 185, 429, 185, 395, 219, 395);
  
  fill(x11, y11, z11);
  // draws square
  quad(124, 429, 158, 429, 158, 395, 124, 395);
  
  fill(x12, y12, z12);
  // draws small triangle
  triangle(219, 463, 219, 429, 185, 429);
  
  fill(x12, y12, z12);
  // draws small triangle
  triangle(124, 463, 124, 429, 158, 429);
  
  fill(x13, y13, z13);
  // draws big triangle
  triangle(219, 463, 124, 463, 172, 416);

   
  
  
  
  fill(x14, y14, z14);
  // draws small triangle
  triangle(243, 486, 219, 463, 267, 463);
  
  fill(x14, y14, z14);
  // draws parallelogram
  quad(196, 486, 243, 486, 219, 463, 172, 463);
  
  fill(x14, y14, z14);
  // draws small triangle
  triangle(148, 486, 124, 463, 172, 463);
  
  fill(x14, y14, z14);
  // draws parallelogram
  quad(101, 486, 148, 486, 124, 463, 77, 463);
  
  fill(x15, y15, z15);
  // draws big triangle
  triangle(172, 463, 125, 510, 219, 510);
  
  fill(x16, y16, z16);
  // draws medium triangle
  triangle(196, 486, 243, 486, 243, 533);
  
  fill(x16, y16, z16);
  // draws medium triangle
  triangle(101, 533, 101, 486, 148, 486);
  
 fill(x17, y17, z17);
  // draws parallelogram
  quad(243, 533, 277, 567, 277, 533, 243, 499);
  
  fill(x17, y17, z17);
  // draws small triangle
  triangle(67, 533, 101, 533, 101, 499);  
  
  fill(x17, y17, z17);
  // draws small triangle
  triangle(67, 533, 67, 567, 101, 533);
  
  fill(x18, y18, z18);
  // draws big triangle
  triangle(0, 600, 67, 600, 67, 533);
  
  fill(x18, y18, z18);
  // draws big triangle
  triangle(277, 533, 277, 600, 344, 600);
  
  x18 = x17;
  x17 = x16;
  x16 = x15;
  x15 = x14;
  x14 = x13;
  x13 = x12;
  x12 = x11;
  x11 = x10;  
  x10 = x9;
  x9 = x8;
  x8 = x7;
  x7 = x6;
  x6 = x5;
  x5 = x4;
  x4 = x3;
  x3 = x2;
  x2 = x1;
  x1 = x;
  
  y18 = y17;
  y17 = y16;
  y16 = y15;
  y15 = y14;
  y14 = y13;
  y13 = y12;
  y12 = y11;
  y11 = y10;  
  y10 = y9;
  y9 = y8;
  y8 = y7;
  y7 = y6;
  y6 = y5;
  y5 = y4;
  y4 = y3;
  y3 = y2;
  y2 = y1;
  y1 = y;
  
  z18 = z17;
  z17 = z16;
  z16 = z15;
  z15 = z14;
  z14 = z13;
  z13 = z12;
  z12 = z11;
  z11 = z10;  
  z10 = z9;
  z9 = z8;
  z8 = z7;
  z7 = z6;
  z6 = z5;
  z5 = z4;
  z4 = z3;
  z3 = z2;
  z2 = z1;
  z1 = z;
  
  }
  else{ 
    fill(255);
    x1 = x2 = x3 = x4 = x5 = x6 = x7 = x8 = x9 = x10 = x11 = x12 = x13 = x14 = x15 = x16 = x17 = x18 = 255;
    y1 = y2 = y3 = y4 = y5 = y6 = y7 = y8 = y9 = y10 = y11 = y12 = y13 = y14 = y15 = y16 = y17 = y18 = 255;
    z1 = z2 = z3 = z4 = z5 = z6 = z7 = z8 = z9 = z10 = z11 = z12 = z13 = z14 = z15 = z16 = z17 = z18 = 255;

}
  
  
  
  

}
// uses the distance formula to find the length of the line segment
float distanceFinder(int x1, int y1, int x2, int y2){
  float distance = sqrt(sq(x2 - x1) + sq(y2 - y1));  
  return distance;
}