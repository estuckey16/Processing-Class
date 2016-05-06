// Project: Autostereogram
// WebApps:2016:2ndSemester:23Mar
// Ellie Stuckey
// This code creates an autostereogram

PImage images;  // Image imported into project
PImage images2;  // Image imported into project
PImage images3;
PImage images4;

// Rounds values
int round(double x) {
  x+=0.5;
  return (int)x;
}

// Stereo separation
int separation(float Z) {
  return round((1-mu*Z)*E/(2-mu*Z));
}

//Pixels per inch
int DPI = 72;
//Eye separation
int E = round(2.5*DPI);
//Depth of field
float mu = 1/3.0;

//Screen size
int maxX = 700;
int maxY = 700;

// X and Y pixel variables
int x = 0;
int y = 0;

// Corresponds to far plane
int far = separation(0);


// Fills the Z array with values for pixels by reading the setup screen
float[][] CreateZArray() {
  float[][] Z = new float[maxX][maxY];  // Creates a new array with the total number of elements for maxXa and maxY
  loadPixels();
  // Writes values into the array
  for (int i = 0; i < maxX; i++)
    for (int j = 0; j < maxY; j++) {
      Z[i][j] = (unhex(hex(get(i, j)).substring(2, 4))/255.0);
      //println(Z[i][j]);
    }
  return Z;
}

void setup() {
  size(700, 700);
  //background(0);
  //noLoop();
  //strokeWeight(1);
  noStroke();
  //noFill();
  //ellipse(maxX/2, maxY/2, 400, 400);

  images = loadImage("person.png");
  images2 = loadImage("fish2.png");
  images3 = loadImage("dofpro_chessDM.jpg");
  images4 = loadImage("dofpro_math2DM.jpg");
  //image(images, -maxX/2, -maxY/4);
  boolean choice = false;
  if (choice == true) {
    background(0);
    images3.resize(maxX, maxY);
    //images4.resize(maxX, maxY);
    //image(images, maxX/4, maxY/4);
    image(images3, 0, 0);
  } else {
    background(255);
    pushMatrix();
    translate(maxX/2, maxY/2);
    float p = 0;
    for (int size = 600; size > 0; size--) {
      fill(p);
      ellipse(0, 0, size, size); 
      p+=.3;
    }
  }

  // popMatrix();
}

void draw() {
  //noFill();
  float [][] Z = CreateZArray();
  //background(255);
  //fill(0);
  for (y = 0; y<maxY; y++) {
    int[] same = new int[maxX];  // new array to store pixel values
    int[] pix = new int[maxX];  
    int s;
    int left, right;
    for (x=0; x<maxX; x++) {  // Each pixel initially linked
      same[x]=x;
    }
    for (x = 0; x < maxX; x++) {
      s = separation(Z[x][y]);
      left = x - s/2;    // Pixels at left and right same
      right = left + s;
      if (0 <= left && right < maxX) {
        boolean visible = true;  // Surface visible
        int t=1;
        float zt;
        do {
          zt = Z[x][y] + 2*(2-mu*Z[x][y])*t/(mu*E);
          visible = Z[x-t][y]<zt && Z[x+t][y]<zt;
          t++;
        } while (visible && zt < 1);
        if (visible) {
          int l = same[left];
          while (l != left && l != right) 
            if (l<right) {
              left=l;
              l=same[left];
            } else {
              same[left]=right;
              left=right;
              l=same[left];
              right=l;
            }
          same[left] = right;
        }
      }
    }
    for (x=maxX-1; x >= 0; x--) {
      if (same[x] == x) pix[x] = (int)(random(2));
      else pix[x] = pix[same[x]];
      if (pix[x] == 0)
      {
        set(x, y, color(0, 0, 0));  // Set pixel to black
      } else
      {
        set(x, y, color(255, 255, 255));  // Set pixel to white
      }
    }
  }
  strokeWeight(1);
  ellipse(maxX/2 - far/2, maxY*19/20, 20, 20);
  ellipse(maxX/2 + far/2, maxY*19/20, 20, 20);
}