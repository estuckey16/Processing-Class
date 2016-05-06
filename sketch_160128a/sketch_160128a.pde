int xdir = 1;
int ydir = 1;
int x = 125;
int y = 100;
void setup() {
  size(500, 500);
  background(0);
  
}

void draw() {
  background(0);
  stroke(255);
  x += xdir;
  y += ydir;
  rect(x, y, 100, 100);
  
  if(x > width - 100 || x < 0) xdir *= -1;
  if(y > height - 100 || y < 0) ydir *= -1;
    
}