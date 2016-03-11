float x1 = 0;
float y1 = 0;
float counter = 0;

public void triangleColors(float x, float y, float h) {
  float triangleX1 = x + WIDTH/2;
  float triangleY1 = y - ((2.0/3.0)*h) + HEIGHT/2;
  float triangleX2 = x + ((sqrt(1.0/3.0)) * h) + WIDTH/2;
  float triangleY2 = y + ((1.0/3.0) * h) + HEIGHT/2;
  float triangleX3 = x - ((sqrt(1.0/3.0)) * h) + WIDTH/2;
  float triangleY3 = y + ((1.0/3.0) * h) + HEIGHT/2;
  triangle(triangleX1, triangleY1, triangleX2, triangleY2, triangleX3, triangleY3);
  noStroke();
  if (counter <= 50 && counter >= 0) {
    fill(220, 117, 74);
    ellipse(x1 + WIDTH/2 , y1 + HEIGHT/2, 10, 10);
    fill(183, 87, 146);
    ellipse(x1 + 5 + WIDTH/2, y1 - 10 + HEIGHT/2, 20, 20);
    fill(42, 6, 227);
    triangle(x1-5+ WIDTH/2, y1 - ((2.0/3.0)*h/7) - 5 + HEIGHT/2, x1 + ((sqrt(1.0/3.0)) * h/7) - 5 + WIDTH/2, y1 + ((1.0/3.0) * h/7) - 5 + HEIGHT/2, 
    x1 - ((sqrt(1.0/3.0)) * h/7) - 5 + WIDTH/2, y1 + ((1.0/3.0) * h/7) - 5 + HEIGHT/2);
    fill(224, 84, 114);
    rect(x1 + 12 + WIDTH/2, y1 + 7 + HEIGHT/2, 10, 10);
    fill(224, 127, 54);
    rect(x1 - 15 + WIDTH/2, y1 + 5 + HEIGHT/2, 12, 12);
    counter++;
  } else if (counter >= 51 && counter <= 121) {
    fill(65, 59, 11);
    ellipse(x1 + 50 + WIDTH/2, y1 + HEIGHT/2, 20, 20);
    fill(158, 74, 254);
    ellipse(x1 + 70 + WIDTH/2, y1 - 10 + HEIGHT/2, 10, 20);
    fill(188, 16, 115);
    ellipse(x1 + 80 + WIDTH/2, y1 + 8 + HEIGHT/2, 20, 25);
    counter++;
  } else if (counter >= 122 && counter <= 185) {
    fill(97, 194, 164);
    rect(x1 + 150 + WIDTH/2, y1 + 3 + HEIGHT/2, 20, 10);
    fill(14, 207, 67);
    rect(x1 + 170 + WIDTH/2, y1 - 10 + HEIGHT/2, 10, 30);
    counter++;
  }
  x1 --;
  //println(x1);
  //println("Frame: " + frameCount);


  if (x1 <= -WIDTH/4) {
    x1 = 10;
    println("here");
  }
  if (counter >= 185) {
    counter = 0;
  }
}