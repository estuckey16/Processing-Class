
int [] data;
int [] [] dataX;
int [] dataY = new int[0];
int [] dataD = new int[0];
int [] dataA = new int[0];
int [] dataB = new int[0];
int [] dataC = new int[0];
int [] dataF = new int[0];
String[] stuff;
int j = 0;
int k = 0;

void setup() {
  size(460, 400);
  stuff = loadStrings("data.csv");
  //println(stuff);
  dataX = new int[stuff.length-1][7];
  for (int index = 1; index < stuff.length; index++) {
    data = int(split(stuff[index], ","));
    for (int i = 0; i < data.length; i++) {
      dataX[index - 1][i] = data[i];
    }
  }
}





void draw() {
  background(255);
  stroke(0);
  fill(0);
  int r = 0;
  int f = 0;
  //ellipse(100, 50, 20, 20);
  for (int outside = 0; outside < stuff.length - 1; outside++) {
    ellipse(150, 50, 20, 20);
    for(int z = 0; z < 6; z++){
    ellipse(dataX[outside][z], dataX[outside][z], dataX[outside][z], dataX[outside][z]);
      //    //rect(i*20, 0, 20, data[i]);
    }
      f+=30;
      
    }
    //r+=30;
  }
  //noLoop();