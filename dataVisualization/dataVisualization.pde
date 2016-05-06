import java.util.*;
PImage back; 
PShape shape;
PImage back2;

float z = 250*cos(radians(37.09024))*cos(radians(-95.712891));
float x = 250*cos(radians(37.09024))*sin(radians(-95.712891));
float y = 250*sin(radians(37.09024));
float r = 250;

float dz = 25;
float direction = 1;


//float z = sqrt(-((37.09024)*(37.09024)) - ((-95.712891) * (-95.712891)) + (250*250));
//float z2 = sqrt(-((35.86166)*(35.86166)) - ((104.195397)*(104.195397)) + (250*250));


HashMap<String, Float> countryToXValue = new HashMap<String, Float>();
HashMap<String, Float> countryToYValue = new HashMap<String, Float>();
HashMap<String, Float> countryToZValue = new HashMap<String, Float>();

String [] data;
String [] dataCountries = new String[0];
float [] data1995 = new float[0];
float [] data1996 = new float[0];
float [] data1997 = new float[0];
float [] data1998 = new float[0];
float [] data1999 = new float[0];
float [] data2000 = new float[0];
float [] data2001 = new float[0];
float [] data2002 = new float[0];
float [] data2003 = new float[0];
float [] data2004 = new float[0];
float [] data2005 = new float[0];
float [] data2006 = new float[0];
float [] data2007 = new float[0];
float [] data2008 = new float[0];
float [] data2009 = new float[0];
float [] data2010 = new float[0];


float [] latitude = new float[0];
float [] longitude = new float[0];
float [] xCoord = new float[0];
float [] yCoord = new float[0];
float [] zCoord = new float[0];

float theta = 0.0;


void setup() {
  size(800, 700, P3D);
  background(0);
  back = loadImage("World_map_with_countries-6.jpg");

  back2 = loadImage("globe2.jpg");
  shape = createShape(SPHERE, 250);
  fill(255);
  shape.setTexture(back2);
  shape.setStrokeWeight(0);
  noStroke();
  //sphereDetail(1500);
  ambientLight(102, 102, 102);
  //frameRate(10);


  String[] stuff = loadStrings("Internet user total.csv");
  //println(stuff);
  for (int index = 0; index < stuff.length; index++) {
    data = (split(stuff[index], ","));

    for (int i = 0; i < data.length; i++) {
      if (data[i].equals("")){
        data[i] = "0";
      }
      //println(data[i]);
      if ((i + 1) % 19 == 0) {
        longitude = append(longitude, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 18 == 0) {
        latitude = append(latitude, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 17 == 0) {
        data2010 = append(data2010, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 16 == 0) {
        data2009 = append(data2009, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 15 == 0) {
        data2008 = append(data2008, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 14 == 0) {
        data2007 = append(data2007, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 13 == 0) {
        data2006 = append(data2006, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 12 == 0) {
        data2005 = append(data2005, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 11 == 0) {
        data2004 = append(data2004, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 10 == 0) {
        data2003 = append(data2003, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 9 == 0) {
        data2002 = append(data2002, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 8 == 0) {
        data2001 = append(data2001, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 7 == 0) {
        data2000 = append(data2000, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 6 == 0) {
        data1999 = append(data1999, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 5 == 0) {
        data1998 = append(data1998, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 4 == 0) {
        data1997 = append(data1997, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 3 == 0) {
        data1996 = append(data1996, Float.parseFloat(data[i]));
      } 
      else if ((i + 1) % 2 == 0) {
        data1995 = append(data1995, Float.parseFloat(data[i]));
      } 
      else {
        dataCountries = append(dataCountries, data[i]);
      }
    }
  }



  for (int i = 0; i < dataCountries.length; i++) {
    xCoord = append(xCoord, r*cos(radians(latitude[i]))*sin(radians(longitude[i])));
    yCoord = append(yCoord, r*sin(radians(latitude[i])));
    zCoord = append(zCoord, r*cos(radians(latitude[i]))*cos(radians(longitude[i])));
  }
  
  



}

void draw() {
  println(dz);
  noStroke();
  background(0);
  translate(width/2, height/2);
  strokeWeight(10);
  rotateX(radians(-10));
  rotateZ(radians(23.5));
  rotateY(theta);

  fill(0, 0, 255);
  //sphere(250);
  stroke(0);
  shape(shape, 10, 10);
  for(int index = 0; index < dataCountries.length; index++){
    point(-xCoord[index], -yCoord[index], -zCoord[index] + dz + 30);
    //println(index +  " " + dataCountries[index]);
  }
  
  point(-x, -y, -z);
  point(0, 0, -250);

  theta += 0.0005;
  dz += direction * .5;
  if (dz >= 70) {
   direction *= (-1); 
  }
  else if (dz <= 10) {
   direction *= (-1); 
  }
}

