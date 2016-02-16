// Project: tangram GSSM
// WebApps:2016:2ndSemeseter:04Feb
// Ellie Stuckey
// Creates the letters GSSM in tangrams and changes colors when the mouse gets into the shape area

void setup() {
 size(2000, 650);
 background(0);
}

void draw(){
 
  // This section draws the G
  stroke(255);
  line(0, 100, width, 100);
  
  stroke(0);
  
  drawGSSM();
  
  // turns the logo colors
  if (mouseX >= 50 && mouseX <= 1400 && mouseY >= 50 && mouseY <= 600) {
    fill(#0E22EA);
    drawGSSM();
  }
  else{
    fill(255);
  }
}
    
void drawGSSM() {
    //draws first small triangle
  triangle(241 - 50, 100, 343 - 50, 100, 343 - 50, 202);
  
  // draws second small triangle
  triangle(241 - 50, 100, 312 - 50, 171, 241 - 50, 242);
  
  //draws first big right triangle
  triangle(241 - 50, 100, 100 - 50, 242, 241 - 50, 383);
  
  // draws second big right triangle
  triangle(100 - 50, 242, 100 - 50, 442, 300 - 50, 442);
  
  // draws medium sized triangle
  triangle(100 - 50, 442, 200 - 50, 542, 300 - 50, 442);
  
  //draws parallelogram
  quad(300 - 50, 442, 200 - 50, 542, 302 - 50, 542, 402 - 50, 442);
  
  //draws square
  quad(300 - 50, 442, 402 - 50, 442, 402 - 50, 340, 300 - 50, 340);
  
  
  //This section draws the first S.
  
  // draws square
  quad(698 - 200, 100 - 50, 800 - 200, 100 - 50, 800 - 200, 202 - 50, 698 - 200, 202 - 50);
  
  // draws small triangle
  triangle(600 - 200, 171 - 50, 698 - 200, 269 - 50, 698 - 200, 100 - 50);
  
  // draws big triangle
  triangle(600 - 200, 171 - 50, 600 - 200, 371 - 50, 800 - 200, 371 - 50);
  
  // draws big triangle
  triangle(600 - 200, 371 - 50, 800 - 200, 371 - 50, 800 - 200, 571 - 50);
  
  // draws small triangle
  triangle(800 - 200, 571 - 50, 698 - 200, 571 - 50, 698 - 200, 469 - 50);
  
  // draws parallelogram
  quad(800 - 200, 571 - 50, 698 - 200, 571 - 50, 596 - 200, 673 - 50, 698 - 200, 673 - 50);
  
  // draws small triangle
  triangle(698 - 200, 571 - 50, 596 - 200, 571 - 50, 596 - 200, 673 - 50);
  
  
  // This section draws the second S.
  
  // draws square
  quad(698 + 100, 100 - 50, 800 + 100, 100 - 50, 800 + 100, 202 - 50, 698 + 100, 202 - 50);
  
  // draws small triangle
  triangle(600 + 100, 171 - 50, 698 + 100, 269 - 50, 698 + 100, 100 - 50);
  
  // draws big triangle
  triangle(600 + 100, 171 - 50, 600 + 100, 371 - 50, 800 + 100, 371 - 50);
  
  // draws big triangle
  triangle(600 + 100, 371 - 50, 800 + 100, 371 - 50, 800 + 100, 571 - 50);
  
  // draws small triangle
  triangle(800 + 100, 571 - 50, 698 + 100, 571 - 50, 698 + 100, 469 - 50);
  
  // draws parallelogram
  quad(800 + 100, 571 - 50, 698 + 100, 571 - 50, 596 + 100, 673 - 50, 698 + 100, 673 - 50);
  
  // draws small triangle
  triangle(698 + 100, 571 - 50, 596 + 100, 571 - 50, 596 + 100, 673 - 50);
  
  
  // This section draws the M.
  
  // draws big triangle
  triangle(1000 - 50, 100, 1000 - 50, 300, 1200 - 50, 300); 
  
  // draws square
  quad(1000 - 50, 300, 1102 - 50, 300, 1102 - 50, 402, 1000 - 50, 402);
  
  // draws small triangle
  triangle(1000 - 50, 402, 1102 - 50, 402, 1000 - 50, 504);
  
  // draws big triangle
  triangle(1200 - 50, 300, 1400 - 50, 300, 1400 - 50, 100);
  
  // draws small triangle
  triangle(1400 - 50, 300, 1298 - 50, 300, 1400 - 50, 402);
  
  // draws parallelogram
  quad(1298 - 50, 300, 1400 - 50, 402, 1400 - 50, 504, 1298 - 50, 402);
  
  // draws medium triangle
  triangle(1102 - 50, 300, 1298 - 50, 300, 1200 - 50, 401);
   
}