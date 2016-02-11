
PImage carH;

class carHippie {
 void drawHippieCar() {                   // setter bilen i spillet.
 if(keyPressed && (key == CODED)) 
 {
   x1 = constrain(x,100,1000);
   
   if(keyCode == LEFT) {
     if (x >= 100) {
     x = x - 35;
     x--;
     }
     carH = loadImage("hippiebilback2.png");   // car left image
     image(carH,x1,y1 - 50);
   }
   if(keyCode == RIGHT) {
    if ( x <= 1000) {
    x = x+ 35;
     x++;
    } 
   carH = loadImage("hippiebilback2.png");  // rightcar image
   image(carH,x1,y1 - 50);
   }
     
 } 
   else {
    carH = loadImage("hippiebilback2.png");     // car rear image
      image(carH,x1,y1 - 50);  
    }
   }
  }
 