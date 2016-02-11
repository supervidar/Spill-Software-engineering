
int x = 500;
float x1;
float y1 = 900;

PImage carS;

class carSport {
 void drawSportsCar() {                   // setter bilen i spillet.
 
  if(keyPressed && (key == CODED)) 
 {
   x1 = constrain(x,0,800);
   
   if(keyCode == LEFT) {
     if (x >= 0) {
     x = x - 35;
     x--;
     }
     carS = loadImage("carleft.png");   // car left image
     image(carS,x1,y1);
   }
    if(keyCode == RIGHT) {
    if ( x <= 800) {
    x = x + 35;
     x++;
    } 
   carS = loadImage("carright.png");  // rightcar image
   image(carS,x1,y1);
   } 
 } 
    else {
    carS = loadImage("car.png");     // car rear image
      image(carS,x1,y1 - 50);  
    }
   }
  }
 