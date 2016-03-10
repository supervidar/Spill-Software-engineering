float plh;  //<>//
int directionP = 0;
int indexP;
PImage plant;

String[] drawp = {"cactus1", "cactus2"};
int indexp = 0 ;


class plant {
  void drawPlant() {

      plh = plh + aksO;
      if(millis() - aksT >= 20000) {
        aksO = aksO + 20;
        aksT = millis();
       
        }
    
    
      
      switch(indexp)
      {
      case 0:    

        if (directionP == 0)                                    //venstre
        {
          plh = plh + 10;
          plant = loadImage("cactus.png");
           translate(700, 480);
           float zoomL = map(1000,50 + plh , width, 0.1, 0);
           scale(zoomL);
           image(plant, -1850, 100);
          
          if (plh > 1550) {
            indexp = int(random(drawp.length));
            directionP = int(random(4));
            plh = 0;
          }
        } else if (directionP == 1)                              //høyre
        {
          plh = plh + 30;
          plant = loadImage("cactus.png");
          translate(900, 480);
          float zoomRight = map(1000, 50 + plh, width, 0.1, 0);
          scale(zoomRight);
          image(plant, 1800, 300);
          
          if(plh > 1550) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            indexp = int(random(drawp.length));
            directionP = int(random(4));
            plh = 0;
          }
        }
        break;

      case 1:       

        if (directionP == 2)                                    //Venstre ytterkant
        {
          plh = plh + 30;
          plant = loadImage("cactus.png");
           translate(400, 480);
           float zoomL = map(1000,50 + plh , width, 0.1, 0);
           scale(zoomL);
           image(plant, -2850, 100);
          
          if (plh > 1550) {
            indexp = int(random(drawp.length));
            directionP = int(random(4));
            plh = 0;
          }
        } else if (directionP == 3)                             // høyre ytterkant
        {
          plh = plh + 30;
          plant = loadImage("cactus.png");
          translate(1300, 480);
          float zoomRight = map(1000, 50 + plh, width, 0.1, 0);
          scale(zoomRight);
          image(plant, 2700, 300);
          
          if(plh > 1550) {             
            indexP = int(random(drawp.length));
            directionP = int(random(4));
            plh = 0;
          }
        }
        break;
      }
    }
  
}