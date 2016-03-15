PImage photo;
PImage photo2;
PImage photo3;
void setup() {
 size(700, 700);
 background(255);
 strokeWeight(3);
 line(width/2, 0, width/2, height);
 line(0, height/2, width, height/2);
 line(0, 0, width, height);
 line(width, 0, 0, height);
 //rect(180, 90, 10, 10);
 photo = loadImage("Sv4BC.png");
 photo2 = loadImage("colorful-blurred-lights.jpg");
 photo3 = loadImage("puppy12.jpg");
 
}
float x = 0;
void draw() {
  background(255);
  pushMatrix();
  photo2.resize(2*width, 2*height);
  photo.resize(2*width, 2*height);
  photo3.resize(2*width, 2*height);
  translate(width/2 , height/2 );
  rotate(radians(10+x));
  //image(photo2, -width, -height);
  image(photo3, -width, -height);
  //image(photo, -width, -height);
  
  popMatrix();
  
  loadPixels();
  for (int r = 0; r < height/2; r++) {
  for (int c = r; c < width/2; c++) {
   pixels[width - c - 1 + width*r] = pixels[c + width*r];  // Top right
   pixels[(height * width - 1) - (width + c + width*r)] = pixels[c + width*r];  // Bottom right
   pixels[(height * width + 1) - (2*width - c + width*r)] = pixels[c+ width*r];  // Bottom left
     
   pixels[r + (width)*c] = pixels[c + width*r];
   pixels[width - r - 1 + width*c] = pixels[c+width*r]; 
   pixels[(height * width - 1) - (width + r  + width*c)] = pixels[c + width*r];
   pixels[(height * width + 1) - (2*width - r + width*c)] = pixels[c+ width*r];  
  }
  }
  updatePixels();
   x++;
   
   
}