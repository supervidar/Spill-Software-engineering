
float a1;

class road {
  void drawRoad() {
  fill(102, 102, 102);
  rect(570,400,60,600);  // road
  triangle(-200,1000,570,400,570,1000); //road
  triangle(630,1000,630,400,1400,1000); //road
  fill(255,204,128);
  triangle(-250,1000,570,400,-200,1000); //sidelines
  triangle(1400,1000,630,400,1450,1000); //sidelines
  
  fill(255);    // field divider
   rect(598,400 + a1,2,10);
  rect(598,460 + a1,3,15);
  rect(598,525 + a1,5,20);
  rect(597,595 + a1,7,40);
  rect(597,685 + a1,9,60);
  rect(597,795 + a1,11,80);
  rect(596,925 + a1,13,100);

  a1 = a1 + 30;
  if ( a1 > 50) {
    a1 = 0;
     }
  if(keyPressed && (key == CODED)) {
   
   if(keyCode == DOWN) {
     a1 = a1 - 10;
     float x3 = constrain(x,50,800);
    photo = loadImage("car.png");     // car rear image
      image(photo,x3,700); 
    }
    if(keyCode == UP) {
     a1 = a1 + 20;
     float x3 = constrain(x,50,800);
    photo = loadImage("car.png");     // car rear image
      image(photo,x3,700); 
     
   }
     
   }
  
   if(a1 > 25) {
     score = score + 5;
   }
   
  }
}