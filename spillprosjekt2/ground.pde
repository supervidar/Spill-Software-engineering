
float a2;

class ground {
  void drawGround() {   // lager bakken med elementer
 //photo = loadImage("fjell3.png");
 // image(photo,0,0);
  fill(179,107,0);
  rect(0,400,1200,600);  //ground
  
  fill(204, 122, 0,70);
  rect(0,450 + a2,1200,600);  //ground
  fill(179,107,0);
  rect(0,500 + a2,1200,500);  //ground
  fill(204, 122, 0,70);
  rect(0,550 + a2,1200,500);  //ground
    fill(179,107,0);
  rect(0,600 + a2,1200,400);  //ground
  fill(204, 122, 0,70);
  rect(0,650 +a2 ,1200,400);  //ground
  fill(179,107,0);
  rect(0,700 + a2,1200,300);  //ground
  fill(204, 122, 0,70);
  rect(0,750 + a2,1200,500);  //ground
  a2 = a2 + 10;
    if ( a2 > 30) {
        a2 = -50; }
  }
}