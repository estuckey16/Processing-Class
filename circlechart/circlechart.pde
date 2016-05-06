
int [] data;
int [] dataX = new int[0];
int [] dataY = new int[0];
int [] dataD = new int[0];

void setup() {
  size(460, 400);
  String[] stuff = loadStrings("circles0.csv");
  //println(stuff);
  for (int index = 0; index < stuff.length; index++) {
    data = int(split(stuff[index], ","));

    for (int i = 0; i < data.length; i++) {
      //println(data[i]);
     if ((i + 1) % 3 == 0) {
      dataD = append(dataD, data[i]);
     } else if ((i + 1) % 2 == 0) {
      dataY = append(dataY, data[i]);
     } else {
      dataX = append(dataX, data[i]);
     }
    }
  }
}



void draw() {
  background(255);
  stroke(0);
  for (int i = 0; i < dataD.length; i++) {
    println( "D" + dataD[i]);
    println( "X" + dataX[i]);
    println( "Y" + dataY[i]);
    fill(dataX[i]);
    ellipse(dataX[i], dataY[i], dataD[i], dataD[i]);
    //rect(i*20, 0, 20, data[i]);
  }
  
  noLoop();
}