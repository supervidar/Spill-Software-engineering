
int x;
int x1 = 200;
int y1 = 650;
PImage carS;

class carSport {
 void drawSportsCar() {       // setter bilen i spillet.
  
  if(keyPressed && (key == CODED)) 
 {
   x1 = constrain(x,250,1000);
   
   if(keyCode == LEFT) {
     if (x >= 250) {
     x = x - 45;
     x--;
     }
     carS = loadImage("carleft.png");   // car left  move image
     image(carS,x1,y1);
   }
    if(keyCode == RIGHT) {
    if ( x <= 1000) {
    x = x + 45;
     x++;
    } 
   carS = loadImage("carright.png");  // rightcar  move image
   image(carS,x1,y1);
   } 
 }
    else {
      if(x < 550) {
       carS = loadImage("carL.png");
       image(carS,x1,y1 );
       } 
       if(x > 550 && x < 800) {
      carS = loadImage("car.png");     // car rear image
      image(carS,x1,y1 - 30);  
     }  
     if(x > 800) {
      carS = loadImage("carR.png");
      image(carS,x1,y1);
      } 
     
  }
   }
  }
 