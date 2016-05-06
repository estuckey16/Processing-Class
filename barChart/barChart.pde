int [] data;

void setup() {
  size(260, 200);
  String[] stuff = loadStrings("barchart0.csv");
  data = int(split(stuff[0], ","));
  
}

void draw() {
  background(255);
  stroke(0);
  for (int i = 0; i < data.length; i++) {
   fill(data[i]);
   rect(i*20, 0, 20, data[i]);
  }
  noLoop();
}