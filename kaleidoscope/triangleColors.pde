float x1 = 0;
float y1 = 0;
float counter = 0;

public void triangleColors(float x, float y, float h) {
  float triangleX1 = x;
  float triangleY1 = y - ((2.0/3.0)*h);
  float triangleX2 = x + ((sqrt(1.0/3.0)) * h);
  float triangleY2 = y + ((1.0/3.0) * h);
  float triangleX3 = x - ((sqrt(1.0/3.0)) * h);
  float triangleY3 = y + ((1.0/3.0) * h);
  triangle(triangleX1, triangleY1, triangleX2, triangleY2, triangleX3, triangleY3);
  noStroke();
  if (counter <= 50 && counter >= 0) {
    fill(220, 117, 74);
    ellipse(x1, y1, 10, 10);
    fill(183, 87, 146);
    ellipse(x1 + 5, y1 - 10, 20, 20);
    fill(42, 6, 227);
    triangle(x1-5, y1 - ((2.0/3.0)*h/7) - 5, x1 + ((sqrt(1.0/3.0)) * h/7) - 5, y1 + ((1.0/3.0) * h/7) - 5, x1 - ((sqrt(1.0/3.0)) * h/7) - 5, y1 + ((1.0/3.0) * h/7) - 5);
    fill(224, 84, 114);
    rect(x1 + 12, y1 + 7, 10, 10);
    fill(224, 127, 54);
    rect(x1 - 15, y1 + 5, 12, 12);
    counter++;
  } else if (counter >= 51 && counter <= 121) {
    fill(65, 59, 11);
    ellipse(x1 + 50, y1, 20, 20);
    fill(158, 74, 254);
    ellipse(x1 + 70, y1 - 10, 10, 20);
    fill(188, 16, 115);
    ellipse(x1 + 80, y1 + 8, 20, 25);
    counter++;
  } else if (counter >= 122 && counter <= 185) {
    fill(97, 194, 164);
    rect(x1 + 150, y1 + 3, 20, 10);
    fill(14, 207, 67);
    rect(x1 + 170, y1 - 10, 10, 30);
    counter++;
  }
  x1 --;
  println(x1);
  println("Frame: " + frameCount);


  if (x1 <= -WIDTH/4) {
    x1 = 10;
    println("here");
  }
  if (counter >= 185) {
    counter = 0;
  }
}