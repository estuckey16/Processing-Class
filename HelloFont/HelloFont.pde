void setup() {
  size(600, 150);
  
}

void draw() {
background(#230348);
PFont f = loadFont("InformalRoman-Regular-128.vlw");
fill(#BF16D6);
textFont(f);

if (mouseX >= 30 && mouseX <= 550 && mouseY <= 145 && mouseY >= 10) {
  text("Hello World", 30, 110);
}

}