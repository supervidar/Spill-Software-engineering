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
         

          if (lys >= 300) {
            lys = lys - 10;
            lys--;
          }
            triangle(650 - lys,500,x1 +110,685,850 - lys,500);
            triangle(750 - lys,500,x1 + 140,685, 950 - lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys <= -300) {
            lys = lys + 10;
            lys++;
          } 
            //triangle(600 + lys,500,x1 + 50,685, 800 + lys ,500);
            //triangle(700 + lys,500,x1 + 100,685, 900 + lys ,500);
            triangle(600 + lys,500,x1 + 110,685,800 + lys,500);
            triangle(700 + lys,500,x1 + 140,685, 900 + lys ,500);
        }
      }
       else
      {
        triangle(600 + lys,500,x1 + 110,685,830 + lys,500);
        triangle(770 + lys,500,x1 + 140,685, 1000 + lys ,500);
      }
  }
  if (carState == 2|| carState == 2 && carState == 4) {
  if (keyPressed && (key == CODED)) 
      {

        x1 = constrain(x, 350, 950);
        
        if (keyCode == LEFT) {
         

          if (lys >= 300) {
            lys = lys - 10;
            lys--;
          }
            triangle(650 - lys,500,x1 +110,685,850 - lys,500);
            triangle(750 - lys,500,x1 + 140,685, 950 - lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys <= -300) {
            lys = lys + 10;
            lys++;
          } 
            //triangle(600 + lys,500,x1 + 50,685, 800 + lys ,500);
            //triangle(700 + lys,500,x1 + 100,685, 900 + lys ,500);
            triangle(600 + lys,500,x1 + 110,685,800 + lys,500);
            triangle(700 + lys,500,x1 + 140,685, 900 + lys ,500);
        }
      }
       else
      {
        triangle(600 + lys,500,x1 + 110,685,830 + lys,500);
        triangle(770 + lys,500,x1 + 140,685, 1000 + lys ,500);
      }
  }
   if (carState == 3) {
  if (keyPressed && (key == CODED)) 
      {

        x1 = constrain(x, 350, 950);
        
        if (keyCode == LEFT) {
         

          if (lys >= 100) {
            lys = lys - 10;
            lys--;
          }
            triangle(650 - lys,500,x1 + 110,685,850 - lys,500);
            triangle(750 - lys,500,x1 + 140,685, 950 - lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys <= 100) {
            lys = lys + 10;
            lys++;
          } 
            //triangle(600 + lys,500,x1 + 50,685, 800 + lys ,500);
            //triangle(700 + lys,500,x1 + 100,685, 900 + lys ,500);
            triangle(600 + lys,500,x1 + 110,685,800 + lys,500);
            triangle(700 + lys,500,x1 + 140,685, 900 + lys ,500);
        }
      }
       else
      {
        triangle(550 + lys,500,x1 + 110,685,725 + lys,500);
        triangle(650 + lys,500,x1 + 140,685, 850 + lys ,500);
      }
  }
 }
}