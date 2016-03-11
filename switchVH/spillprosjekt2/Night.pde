int lys;
int lys1;
class Night {
 void drawNight() { 
  fill(0,200);
  rect(0,0,1600,900);
  fill(255,255,0,100);
 // triangle(500,500,x1 + 150,800, 1000 ,500);
  if (carState == 1) {
  if (keyPressed && (key == CODED)) 
      {

        x1 = constrain(x, 350, 950);
        
        if (keyCode == LEFT) {
         

          if (lys >=400) {
            lys = lys - 10;
            lys--;
          }
          triangle(600 - lys,500,x1 + 100,800, 1000 - lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys <= 500) {
            lys = lys + 10;
            lys++;
          } 
            triangle(600 + lys,500,x1 + 100,800, 1000 + lys ,500);
        }
      }
       else
      {
        triangle(600,500,x1 + 150,800, 1000 ,500);
      }
  }
  if (carState == 2|| carState == 4) {
  if (keyPressed && (key == CODED)) 
      {

        x1 = constrain(x, 350, 950);
        
        if (keyCode == LEFT) {
         

          if (lys <= -500) {
            lys = lys + 10;
            lys++;
          }
          triangle(600 - lys,500,x1 + 100,800, 1000 - lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys >= -400) {
            lys = lys - 10;
            lys--;
          } 
            triangle(600 + lys,500,x1 + 100,800, 1000 + lys ,500);
        }
      }
       else
      {
        triangle(600,500,x1 + 150,800, 1000 ,500);
      }
  }
   
 }
}