
float a2;

class ground {
  void drawGround() {   // lager bakken med elementer
 
   if(level == 2) {
      fill(255);
  rect(0,500,1600,600);  //ground
  rect(0,550 + a2,1600,600);  //ground
  rect(0,600 + a2,1600,500);  //ground
  rect(0,650 + a2,1600,600);  //ground
  rect(0,700 + a2,1600,500);  //ground
  rect(0,750 + a2,1600,500);  //ground
  rect(0,800 + a2,1600,400);  //ground
  rect(0,850 +a2 ,1600,400);  //ground
   rect(0,900 + a2,1600,300);  //ground
  rect(0,950 + a2,1600,500);  //ground 
  }
  else {
  fill(179,107,0);
  rect(0,500,1600,600);  //ground
  fill(204, 122, 0,70);
  rect(0,550 + a2,1600,600);  //ground
  fill(179,107,0);
  rect(0,600 + a2,1600,500);  //ground
  fill(204, 122, 0,70);
  rect(0,650 + a2,1600,600);  //ground
  fill(179,107,0);
  rect(0,700 + a2,1600,500);  //ground
  fill(204, 122, 0,70);
  rect(0,750 + a2,1600,500);  //ground
    fill(179,107,0);
  rect(0,800 + a2,1600,400);  //ground
  fill(204, 122, 0,70);
  rect(0,850 +a2 ,1600,400);  //ground
  fill(179,107,0);
  rect(0,900 + a2,1600,300);  //ground
  fill(204, 122, 0,70);
  rect(0,950 + a2,1600,500);  //ground
  }
  a2 = a2 + 15;
    if ( a2 > 40) {
        a2 = -50; 
      }
 
  }
}