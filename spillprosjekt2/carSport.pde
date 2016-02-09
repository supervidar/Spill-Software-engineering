
int x = 500;
float x1;
float y1 = 900;
class carSport {
 void drawSportsCar() {                   // setter bilen i spillet.
 
  if(keyPressed && (key == CODED)) {
   x1 = constrain(x,0,800);
   if(keyCode == LEFT) {
     if (x >= 0) {
     x = x - 35;
     x--;
     }
     photo = loadImage("carleft.png");   // car left image
     image(photo,x1,y1);
   }
   if(keyCode == RIGHT) {
    if ( x <= 800) {
    x = x + 35;
     x++;
    } 
   photo = loadImage("carright.png");  // rightcar image
   image(photo,x1,y1);
   }
    
    
    
   
    } 
    else {
    photo = loadImage("car.png");     // car rear image
      image(photo,x1,y1);  
    }
   }
  }
 