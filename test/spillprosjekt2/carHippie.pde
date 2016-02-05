
int y = 500;

class carHippie {
 void drawHippieCar() {                   // setter bilen i spillet.
 if(keyPressed && (key == CODED)) {
   
   if(keyCode == LEFT) {
     if (y >= 0) {
     y = y - 35;
     y--;
     }
     float y1 = constrain(y,0,700);
     photo = loadImage("hippiebilback2.png");   // car left image
     image(photo,y1,900);
   }
   if(keyCode == RIGHT) {
    if ( y <= 800) {
    y = y + 35;
     y++;
    }
   float y2 = constrain(y,0,800); 
   photo = loadImage("hippiebilback2.png");  // rightcar image
   image(photo,y2,900);
   }
    
    
    
   
    } 
    else {
     float y3 = constrain(y,50,800);
    photo = loadImage("hippiebilback2.png");     // car rear image
      image(photo,y3,900);  
    }
   }
  }
 