// Global variables for the possible backgrounds
PImage photo;
PImage photo2;
PImage photo3;
PImage photo4;
PImage photo5;

float x = 0;

void setup() {
 size(700, 700);
 background(255);
 strokeWeight(3);
 // Guidelines
 line(width/2, 0, width/2, height);
 line(0, height/2, width, height/2);
 line(0, 0, width, height);
 line(width, 0, 0, height);
 
 // Loading pictures for backgrounds
 photo = loadImage("Sv4BC.png");
 photo2 = loadImage("colorful-blurred-lights.jpg");
 photo3 = loadImage("puppy12.jpg");
 photo4 = loadImage("robot.jpg");
 photo5 = loadImage("crowd-lego.jpg");
 
}

void draw() {
  background(255);
  
  pushMatrix();
  // Resize pictures
  photo2.resize(2*width, 2*height);
  photo.resize(2*width, 2*height);
  photo3.resize(2*width, 2*height);
  photo4.resize(2*width, 2*height);
  photo5.resize(2*width, 2*height);

  translate(width/2 , height/2 );
  rotate(radians(x));
  
  // Image options
  
  //image(photo2, -width, -height);
  //image(photo3, -width, -height);
  //image(photo4, -width, -height);
  //image(photo, -width, -height);
  //image(photo5, -width, -height);
  
  image(photo2, 0, 0);
  image(photo3, -width *2, 0);
  //image(photo4, 0, -height * 2);
  image(photo, 0, -height * 2);
  image(photo5, -width * 2, -height * 2);
  
  popMatrix();
  
  // Pixel transformations
  loadPixels();
  for (int r = 0; r < height/2; r++) {
  for (int c = r; c < width/2; c++) {
   pixels[width - c - 1 + width*r] = pixels[c + width*r];  // Top right
   pixels[(height * width - 1) - (width + c + width*r)] = pixels[c + width*r];  // Bottom right
   pixels[(height * width + 1) - (2*width - c + width*r)] = pixels[c+ width*r];  // Bottom left
     
   pixels[r + (width)*c] = pixels[c + width*r]; // Bottom top left
   pixels[width - r - 1 + width*c] = pixels[c+width*r]; // Bottom top right
   pixels[(height * width - 1) - (width + r  + width*c)] = pixels[c + width*r];  // bottom bottom right
   pixels[(height * width + 1) - (2*width - r + width*c)] = pixels[c+ width*r];   // bottom bottom left
  }
  }
  updatePixels();
   x+=5;
   
   
}