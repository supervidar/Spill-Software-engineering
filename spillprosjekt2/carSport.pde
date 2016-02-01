
int x = 500;

class carSport {
 void drawSportsCar() {                   // setter bilen i spillet.
 
  if(keyPressed && (key == CODED)) {
   
   if(keyCode == LEFT) {
     if (x >= 0) {
     x = x - 35;
     x--;
     }
     float x1 = constrain(x,0,700);
     photo = loadImage("carleft.png");   // car left image
     image(photo,x1,900);
   }
   if(keyCode == RIGHT) {
    if ( x <= 800) {
    x = x + 35;
     x++;
    }
   float x2 = constrain(x,0,800); 
   photo = loadImage("carright.png");  // rightcar image
   image(photo,x2,900);
   }
    
    
    
   
    } 
    else {
     float x3 = constrain(x,50,800);
    photo = loadImage("car.png");     // car rear image
      image(photo,x3,900);  
    }
   }
  }
 