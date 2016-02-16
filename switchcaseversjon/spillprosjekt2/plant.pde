float pll; //<>//
float plr;
int directionP = 1;
int indexP;
PImage plant;

String[] drawp = {"cactus1", "cactus2"};
int indexp = 1;


class plant {
  void drawPlant() {

      
      switch(indexp)
      {
      case 0:    

        if (directionP == 0)                                    //venstre
        {
          pll = pll + 30;
          plant = loadImage("cactus.png");
           translate(700, 480);
           float zoomL = map(1000,50 + pll , width, 0.1, 0);
           scale(zoomL);
           image(plant, -1850, 100);
          
          if (pll > 1550) {
            indexp = int(random(drawp.length));
            directionP = int(random(2));
            pll = 0;
          }
        } else if (directionP == 1)
        {
          plr = plr + 30;
          plant = loadImage("cactus.png");
          translate(900, 480);
          float zoomRight = map(1000, 50 + plr, width, 0.1, 0);
          scale(zoomRight);
          image(plant, 1800, 300);
          
          if(plr > 1550) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            indexp = int(random(drawp.length));
            directionP = int(random(2));
            plr = 0;
          }
        }
        break;

      case 1:       

        if (directionP == 0) 
        {
          pll = pll + 30;
          plant = loadImage("cactus.png");
           translate(400, 480);
           float zoomL = map(1000,50 + pll , width, 0.1, 0);
           scale(zoomL);
           image(plant, -2850, 100);
          
          if (pll > 1550) {
            indexp = int(random(drawp.length));
            directionP = int(random(2));
            pll = 0;
          }
        } else if (directionP == 1)
        {
          plr = plr + 30;
          plant = loadImage("cactus.png");
          translate(1300, 480);
          float zoomRight = map(1000, 50 + plr, width, 0.1, 0);
          scale(zoomRight);
          image(plant, 2700, 300);
          
          if(plr > 1550) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            indexP = int(random(drawp.length));
            directionP = int(random(2));
            plr = 0;
          }
        }
        break;
      }
    }
  
}
/*
float p;
float pll;
float plr;
PImage plant;

class plant {
   void drawPlant(){
     
//------venstre felt-----------------------------
      pll = pll + 20;
     plant = loadImage("cactus.png");
     translate(700, 490);
     float zoomL = map(1000,50 + pll , width, 0.1, 0);
     scale(zoomL);
     image(plant, -1850, 100);
      pll = pll + 20;
     if(pll > 1550) {
       pll = 0;}
     
   
   }
}*/