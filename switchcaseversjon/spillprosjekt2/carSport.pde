
int x = 800;
float x1;
float y1 = 700;

PImage carS;

class carSport {
 void drawSportsCar() {                   // setter bilen i spillet.
 
  if(keyPressed && (key == CODED)) 
 {
   x1 = constrain(x,100,1000);
   
   if(keyCode == LEFT) {
     if (x >= 100) {
     x = x - 35;
     x--;
     }
     carS = loadImage("carleft.png");   // car left image
     image(carS,x1,y1);
   }
    if(keyCode == RIGHT) {
    if ( x <= 1000) {
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
 