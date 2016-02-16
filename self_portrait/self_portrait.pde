// Project: Self Portrait
//WebApps:2016:2ndSemester:06Feb
//Ellie Stuckey
//This project draws a self portrait. If the mouse goes over the mouth or eyebrows, it changes.

void setup(){
 size(540, 700); 
 smooth();
}

void draw(){
background(#D11AEA, 100);
// draws cirlce part of head
noFill();
noStroke();
fill(#743D06);
ellipse(270, 425, 520, 850);

fill(#FAE19C);
ellipse(270, 350, 400, 522); 


//draws neck
noFill();
bezier(362, 700, 355, 700, 355, 585, 362, 585);
bezier(179, 700, 186, 700, 186, 585, 179, 585);
strokeWeight(5);
stroke(#FAE19C);
line(179, 696, 362, 696);
line(180, 692, 361, 692);
line(181, 687, 360, 687);
line(182, 682, 359, 682);
line(183, 677, 358, 677);
line(184, 672, 358, 672);
line(185, 667, 357, 667);
line(186, 662, 356, 662);
line(187, 657, 355, 657);
line(188, 652, 354, 652);
line(187, 647, 353, 647);
line(187, 642, 353, 642);
line(186, 637, 354, 637);
line(185, 632, 355, 632);
line(184, 627, 356, 627);
line(184, 622, 356, 622);
line(184, 617, 356, 617);
line(184, 615, 356, 615);
line(184, 612, 245, 612);
line(184, 611, 242, 611);
line(183.5, 610, 238, 610);
line(183.5, 609, 234, 609);
line(183.5, 608, 229, 608);
line(183.5, 607, 224, 607);
line(183.5, 606, 219, 606);
line(183.5, 605, 214, 605);
line(183, 604, 212, 604);
line(183, 603, 212, 603);
line(183, 602, 208, 602);
line(183, 601, 204, 601);
line(183, 600, 202, 600);
line(183, 599, 199, 599);
line(183, 598, 199, 598);
line(183, 597, 198, 597);
line(183, 596, 196, 596);
line(183, 595, 194, 595);
line(183, 594, 192, 594);
line(183, 593, 190, 593);
line(182.5, 592, 188, 592);
line(182.5, 591, 186, 591);
line(182.5, 590, 184, 590);
line(352, 590, 356, 590);
line(350, 591, 356, 591);
line(348, 592, 356, 592);
line(346, 593, 356, 593);
line(346, 594, 356, 594);
line(344, 595, 356, 595);
line(344, 594, 356.5, 594);
line(343, 593, 356, 593); 
line(342, 594, 356, 594);
line(340, 596, 356, 596);
line(339, 598, 356, 598);
line(337, 599, 356, 599);
line(332, 601, 356, 601);
line(325, 602, 356, 602);
line(320, 604, 356, 604); 
line(314, 606, 356, 606);
line(308, 608, 356, 608);
line(302, 609, 356, 609);
line(296, 610, 356, 610);
line(230, 610, 356, 610);



strokeWeight(2);
//draws lips

stroke(0);



if (mouseX >= 195 && mouseX <= 340 && mouseY >= height - 242 && mouseY <= height - 180) {
  fill(0);
  ellipse(270, 500, 150, 50);
}
else{
  fill(#CE2A2A);
bezier(195, height - 220, 195, height - 210, 340, height - 210, 340, height - 220);
fill(#AA1515);
bezier(195, height - 220, 195, height - 180, 340, height - 180, 340, height - 220);
fill(#CE2A2A);
bezier(195, height - 220, 195, height - 242, 340, height - 242, 340, height - 220); 
}
  
//draws eyes
fill(255);


bezier(130, 301, 130, height - 421, 231, height - 421, 231, 301);
bezier(130, 301, 130, height - 377, 239, height - 377, 231, 301);

bezier(304, 301, 304, height - 421, 405, height - 421, 405, 301);
bezier(304, 301, 304, height - 377, 405, height - 377, 405, 301);


// draws iris

  fill(#65862A);
  ellipse(181, 301, 44, 34);
  ellipse(355, 301, 44, 34);





// draws pupils
fill(20, 20, 20);
ellipse(181, 301, 15, 15);
ellipse(355, 301, 15, 15);

// draws eyebrows
//line(122, height - 430, 226, height - 437);
//line(304, height - 437, 408, height - 430);
//line(122, height - 435, 226, height - 442);
//line(304, height - 442, 408, height - 435);
noFill();




// raises eyebrows if mouse over the area
if(mouseX >= 122 && mouseX <= 226 && mouseY >= height - 447 && mouseY <= height - 420){
  bezier(122, height - 430, 122, height - 437, 226, height - 460, 226, height - 445);
}
else{
  bezier(122, height - 430, 122, height - 437, 226, height - 445, 226, height - 437);
}

if(mouseX >= 304 && mouseX <= 408 && mouseY >= height - 457 && mouseY <= height - 420) {
  bezier(304, height - 442, 304, height - 457, 408, height - 435, 408, height - 430);
}
else{
  bezier(304, height - 437, 304, height - 447, 408, height - 435, 408, height - 430);
}


  

// draws part
line(324, height - 603, 361, height - 670);

//draws nose
arc(270, 400, 55, 55, radians(60), radians(280));


}