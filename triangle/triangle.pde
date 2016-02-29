float x = 50;
float y = 50;
float sideLength = 40;
float h = sqrt((sideLength*sideLength) - (sideLength/2 * sideLength/2));


triangle(x, y - ((2.0/3.0)*h), x + ((sqrt(1.0/3.0)) * h), y + ((1.0/3.0) * h), x - ((sqrt(1.0/3.0)) * h), y + ((1.0/3.0) * h));

println(h * (2.0/3.0));