int lys;
int lys1;
class Night {
 void drawNight() { 
  fill(0,220);
  rect(0,0,1600,900);
  fill(255,255,0,50);
 // triangle(500,500,x1 + 150,800, 1000 ,500);
  if (carState == 1) {                                                        // funksjon av frontlys ved carstate 1
  if (keyPressed && (key == CODED)) 
      {

        x1 = constrain(x, 350, 950);
        
        if (keyCode == LEFT) {
         
          if (lys < 400) {
            lys = lys + 50;
           
          }
            triangle(650 - lys,500,x1 +110,685,850 - lys,500);
            triangle(750 - lys,500,x1 + 140,685, 950 - lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys < 400) {
            lys = lys + 50;
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
        lys = 0;
      }
  }
  if (carState == 2|| carState == 2 && carState == 4) {                               // funksjon av frontlys ved carstate 2 , og 2 og 4
  if (keyPressed && (key == CODED)) 
      {

        x1 = constrain(x, 350, 950);
        
        if (keyCode == LEFT) {
         

          if (lys < 400) {
            lys = lys + 50;
            lys--;
          }
            triangle(650 + lys,500,x1 +110,685,850 + lys,500);
            triangle(750 + lys,500,x1 + 140,685, 950 + lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys < 400) {
            lys = lys + 50;
            lys++;
          } 
            //triangle(600 + lys,500,x1 + 50,685, 800 + lys ,500);
            //triangle(700 + lys,500,x1 + 100,685, 900 + lys ,500);
            triangle(600 - lys,500,x1 + 110,685,800 - lys,500);
            triangle(700 - lys,500,x1 + 140,685, 900 - lys ,500);
        }
      }
       else
      {
        triangle(600 + lys,500,x1 + 110,685,830 + lys,500);
        triangle(770 + lys,500,x1 + 140,685, 1000 + lys ,500);
        lys = 0;
      }
  }
   if (carState == 3) {                                                                     // funksjon av frontlys ved carstate 3
  if (keyPressed && (key == CODED)) 
      {

        x1 = constrain(x, 350, 950);
        
        if (keyCode == LEFT) {
         

          if (lys < 400) {
            lys = lys + 50;
            lys++;
          }
            triangle(650 - lys,500,x1 + 110,685,850 - lys,500);
            triangle(750 - lys,500,x1 + 140,685, 950 - lys ,500);
        }
        if (keyCode == RIGHT) {

          if ( lys < 400) {
            lys = lys + 50;
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
        triangle(550 + lys,500,x1 + 110,685,830 + lys,500);
        triangle(650 + lys,500,x1 + 140,685, 1000 + lys ,500);
        lys = 0;
      }
  }
      
      
      
       if (keyPressed && (key == CODED)) 
      {
        x1 = constrain(x, 300, 1000);                              // Bevegelse av baklykter på sportsbil

        if (keyCode == LEFT) {
          
           fill(255,0,0);
          rect(x1 + 178,755,4,20);
          rect(x1 + 300,745,4,20);
          
        }
        if (keyCode == RIGHT) {
          //so.breakSound();

           fill(255,0,0);
          rect(x1 + 13,738,4,20);
          rect(x1 + 145,748,4,20);
          
        }
      }
       else
      {
        fill(255,0,0);
        if (x <= 550) {
          rect(x1 + 26,750,4,28);
          rect(x1 + 198,755,4,28);
         
        } 
        if (x > 550 && x <= 800) {
           rect(x1 + 40,750,4,28);
          rect(x1 + 218,750,4,28);
        }  
        if (x > 800) {
          rect(x1 + 73,742,4,28);
          rect(x1 + 240,738,4,28);
        }
      }
   
   }
  }