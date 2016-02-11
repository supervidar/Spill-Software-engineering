
float a1;
int aks;

class road {
  void drawRoad() {
  fill(102, 102, 102);
  rect(570,600,60,600);  // road
  triangle(-200,1200,570,600,570,1200); //road
  triangle(630,1200,630,600,1400,1200); //road
  fill(255,204,128);
  triangle(-280,1200,570,600,-200,1200); //sidelines
  triangle(1400,1200,630,600,1480,1200); //sidelines
  
  fill(255);    // field divider
   rect(598,600 + a1,2,10);
  rect(598,660 + a1,3,15);
  rect(598,725 + a1,5,20);
  rect(597,795 + a1,7,40);
  rect(597,885 + a1,9,60);
  rect(597,995 + a1,11,80);
  rect(596,1125 + a1,13,100);
 
   a1 = a1 + 3;
  aks = millis()/1000;
  for (aks = 0; aks < 5; aks = aks + 2) {
       a1 = a1 + aks;
  }
 
  if ( a1 > 50) {
    a1 = 0;
     }
  
  
  }
}