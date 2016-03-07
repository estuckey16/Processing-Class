PShape s;

public void hexagon(float h) {

    float radius = h;



  s = createShape();
  s.beginShape();
  
  s.vertex(-radius, 0);
  s.vertex(-radius / 2, -(sqrt(3)/2) * radius);
  
  s.vertex(radius / 2, -(sqrt(3)/2) * radius);
  
  s.vertex(radius, 0);
  s.vertex(radius/2, (sqrt(3)/2) * radius);
  s.vertex(-radius/2, (sqrt(3)/2) * radius);
  s.endShape(CLOSE);
  
  shape(s, 25, 25); 
}