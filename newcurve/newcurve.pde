// Project: Mystery Curve
// WebApps:2016:2ndSemester:29Feb
// Ellie Stuckey

float WIDTH = 600;
float HEIGHT = 600;

void setup() {
 size(600, 600); 
 frameRate(240);
 
}

// Creates a random x coordinate for Point P1
float randomX1 = -100; 
//random(-WIDTH/2, WIDTH/2);  
// Creates a random y coordinate for Point P1
float randomY1 = -100;
//random(-HEIGHT/2, HEIGHT/2);
// Creates a random x coordinate for Point P2
float randomX2 = 200;
//random(-WIDTH/2, WIDTH/2);
// Creates a random y coordinate for Point P2
float randomY2 = -150;
//random(-HEIGHT/2, HEIGHT/2);


// Creates a random y coordinate for the beginning point of Line 1
float line1Y1 = -50;// random(-HEIGHT, 0);
// Creates a random y coordinate for the ending point of Line 1
float line1Y2 = 100;//random(0, HEIGHT);

// Creates a random y coordinate for the beginning point of Line 2
float line2Y1 = 100;//random(0, HEIGHT);
// Creates a random y coordinate for the ending point of Line 2
float line2Y2 = -100; //random(-HEIGHT, 0);

// Calculate the slope
float randomSlope1 = (line1Y2 - line1Y1) / (WIDTH/2 - (-WIDTH/2));
float randomSlope2 = (line2Y2 - line2Y1) / (WIDTH/2 - (-WIDTH/2));

// Calculate the y intercept of both lines
float yInterceptRandom1 = line1Y1 - (randomSlope1 * -WIDTH/2);
float yInterceptRandom2 = line2Y1 - (randomSlope2 * -WIDTH/2);

// Creates a moving variable that will move along line 1
float xCounter = -WIDTH/2;
float yCounter = randomSlope1 * xCounter + yInterceptRandom1;

float distance = sqrt(((randomX1 + randomX2) * (randomX1 + randomX2)) + ((randomY1 + randomY2) * (randomY1 + randomY2)));

float xCounterVariable = -WIDTH/2;
float yCounterVariable = yCounter + sqrt((distance * distance) - ((-WIDTH/2 * -WIDTH/2) - 2*-WIDTH/2*xCounter + (xCounter * xCounter)));

void draw() {
  
  //println("point1 ( " + -WIDTH/2 + "," + line1Y1 + ")");
  //println("point2 ( " + WIDTH/2 + "," + line1Y2 + ")");
  //println("slope" + randomSlope1);
  //noLoop();
 pushMatrix();  
 translate(WIDTH/2, HEIGHT/2);    // Pushes the origin to the center of the screen
 
 stroke(0, 0, 255);
 //line(-WIDTH/2, 0, WIDTH/2, 0);      // Draws the horizontal axis
 //line(0, -HEIGHT/2, 0, HEIGHT/2);    // Draws the vertical axis
 
 stroke(0, 0, 0);
 fill(0);
 ellipse(randomX1, randomY1, 10, 10);    // Draws the first random point
 fill(255);
 ellipse(randomX2, randomY2, 10, 10);    // Draws the second random point
 stroke(255, 0, 0);
 line(-WIDTH/2, line1Y1, WIDTH/2, line1Y2);    // Draws line 1
 stroke(0);
 line(-WIDTH/2, line2Y1, WIDTH/2, line2Y2);    // Draws line 2
 
 stroke(0, 255, 0);
 //ellipse(0, yInterceptRandom1, 10, 10);
 //ellipse(0, yInterceptRandom2, 10, 10);
 //ellipse(xCounter, randomSlope1 * xCounter + yInterceptRandom1, distance * 2, distance * 2);    // Draws the point along the first line
 //ellipse(xCounter, randomSlope2 * xCounter + yInterceptRandom2, 10, 10);    // Draws the point along the second line
 
 
 for (float index = -WIDTH/2; index <= WIDTH/2; index++){
   //yCounterVariable = sqrt((distance * distance) - ((xCounterVariable - xCounter) * (xCounterVariable - xCounter))) + yCounter;
   float xIntersection = ((-randomSlope2*yInterceptRandom2) + sqrt((distance*distance) + (distance*distance*randomSlope2*randomSlope2) - 
         (yInterceptRandom2*yInterceptRandom2))) / (1 + (randomSlope2 * randomSlope2));
   float xIntersection2 = ((-randomSlope2*yInterceptRandom2) - sqrt((distance*distance) + (distance*distance*randomSlope2*randomSlope2) - 
         (yInterceptRandom2*yInterceptRandom2))) / (1 + (randomSlope2 * randomSlope2));      
   
   float yIntersection = (yInterceptRandom2 + (randomSlope2* sqrt((distance*distance) + (distance*distance*randomSlope2*randomSlope2) - 
         (yInterceptRandom2*yInterceptRandom2))))/ (1 + (randomSlope2 * randomSlope2));
         
   float yIntersection2 = (yInterceptRandom2 - (randomSlope2* sqrt((distance*distance) + (distance*distance*randomSlope2*randomSlope2) - 
         (yInterceptRandom2*yInterceptRandom2))))/ (1 + (randomSlope2 * randomSlope2));
   
         
      //line(xCounter, -height/2, xCounter, height/2);
      
      //yCounterVariable = sqrt((distance * distance) - ((xCounterVariable - xCounter) * (xCounterVariable - xCounter))) + yCounter;
      float midX = (xCounter + randomX1)/2;
      float midY = (yCounter + randomY1)/2;
      
      float midpointX2 = (xIntersection + randomX2) / 2;
      float midpointY2 = (yIntersection + randomY2) / 2;
      
      float slope = ((midpointY2 - midY)/(midpointX2 - midX));
      float b1 = midY - (slope * midX);                                // Calculates the y-intercept of the line
      float b2 = (slope * WIDTH/2) + b1;                                 // Calculates the y value at x = width
      float b3 = (slope * -WIDTH/2) + b1; 
      
      line(-WIDTH/2, b3, WIDTH/2, b2);
      
      //xCounterVariable ++;
   
      //float midX2 = (xCounter + randomX1)/2;
      //float midY2 = (yCounter + randomY1)/2;
      
      //float midpointX22 = (xIntersection + randomX2) / 2;
      //float midpointY22 = (yIntersection + randomY2) / 2;
      
      //float slope2 = ((midpointY22 - midY2)/(midpointX22 - midX2));
      //float b12 = midY - (slope2 * midX2);                                // Calculates the y-intercept of the line
      //float b22 = (slope2 * WIDTH/2) + b12;                                 // Calculates the y value at x = width
      //float b32 = (slope2 * -WIDTH/2) + b12; 
      
      //line(-WIDTH/2, b32, WIDTH/2, b22);
   
           
  }
  

  
 
 //ellipse(300, 200, 10, 10);
 //ellipse(-300, -100, 10, 10);
 xCounter+=20;
 yCounter = randomSlope1 * xCounter + yInterceptRandom1;
 //xCounterVariable = -WIDTH/2;
 //yCounterVariable = yCounter + sqrt((distance * distance) - ((-WIDTH/2 * -WIDTH/2) - 2*-WIDTH/2*xCounter + (xCounter * xCounter)));
 
 popMatrix();
}