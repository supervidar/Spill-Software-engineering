
float a2;

class ground {
  void drawGround() {   // lager bakken med elementer
 
 if(level < 4)                              //   Draws the desert ground
  {
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
  
  if(level > 3 && level < 8) {                            // Draws the forrest ground
  fill(0, 122, 0);
  rect(0,500,1600,600);  //ground
  fill(0, 128, 0);
  rect(0,550 + a2,1600,600);  //ground
  fill(0, 122, 0);
  rect(0,600 + a2,1600,500);  //ground
  fill(0, 128, 0);
  rect(0,650 + a2,1600,600);  //ground
  fill(0, 122, 0);
  rect(0,700 + a2,1600,500);  //ground
  fill(0, 128, 0);
  rect(0,750 + a2,1600,500);  //ground
  fill(0, 122, 0);
  rect(0,800 + a2,1600,400);  //ground
  fill(0, 128, 0);
  rect(0,850 +a2 ,1600,400);  //ground
  fill(0, 122, 0);
  rect(0,900 + a2,1600,300);  //ground
  fill(0, 128, 0);
  rect(0,950 + a2,1600,500);  //ground 
  } 
  
  if(level > 7) {                            // Draws the  snow ground
  fill(255);
  rect(0,500,1600,600);  //ground
  fill(250);
  rect(0,550 + a2,1600,600);  //ground
  fill(255);
  rect(0,600 + a2,1600,500);  //ground
  fill(250);
  rect(0,650 + a2,1600,600);  //ground
  fill(255);
  rect(0,700 + a2,1600,500);  //ground
  fill(250);
  rect(0,750 + a2,1600,500);  //ground
  fill(255);
  rect(0,800 + a2,1600,400);  //ground
  fill(250);
  rect(0,850 +a2 ,1600,400);  //ground
  fill(255);
  rect(0,900 + a2,1600,300);  //ground
  fill(250);
  rect(0,950 + a2,1600,500);  //ground 
   }
  
  a2 = a2 + 15;
    if ( a2 > 40) {
        a2 = -50; 
      }
 
  }
}