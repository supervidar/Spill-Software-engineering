 //<>//
float h;
float z;
float zoomLeft;
float zoomRight;
float aksO = 1;
int direction = 0;

PImage objekt;

String[] draw = {"Ol", "Liv","oil"};
int index = 0;


class object {
  void drawObject() {

      h = h + aksO;
     /* if(millis() - aksO >= 10000) {
        aksO = aksO + 0.5;
        aksT = millis();
       
        }*/
  
      switch(index)
      {
      case 0:    
  
        if (direction == 0)                                    //venstre
        {
          objekt = loadImage("sunliv.png");
          z = map(0,0, width, 10 + h, 80);
          image(objekt,800,490 + h,z,z);
          /*objekt = loadImage("sunliv.png");
          translate(800, 480);
          zoomLeft = map(600, 50 + h, width, 0.1, 0);
          scale(zoomLeft);
          image(objekt, -450, 300);*/
          if (h > 110) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        
        } else if (direction == 1)
        {
          objekt = loadImage("sunliv.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, -150, 300);
          
          if(h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        else if (direction == 2)
        {
          objekt = loadImage("sunliv.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 50, 300);
          
          if(h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        else if (direction == 3)
        {
          objekt = loadImage("sunliv.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 250, 300);
          
          if(h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        break;

      case 1:       

        if (direction == 0) 
        {
          objekt = loadImage("øl.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, -450, 300);
          
          if (h > 1450) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        } else if (direction == 1)
        {
          objekt = loadImage("øl.png");
          translate(800, 480);
          zoomLeft = map(600, 50 + h, width, 0.1, 0);
          scale(zoomLeft);
          image(objekt, -150, 300);
          
          if (h > 1450) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        else if (direction == 2)
        {
          objekt = loadImage("øl.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 50, 300);
          
          if(h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        else if (direction == 3)
        {
          objekt = loadImage("øl.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 250, 300);
          
          if(h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            index = int(random(draw.length));
            direction = int(random(2));
            h = 0;
          }
        }
        break;
        
       case 2:       

        if (direction == 0) 
        {
          objekt = loadImage("oil1.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, -450, 300);
          
          if (h > 1450) {
            index = int(random(draw.length));
            direction = int(random(2));
            h = 0;
          }
        } else if (direction == 1)
        {
          objekt = loadImage("oil1.png");
          translate(800, 480);
          zoomLeft = map(600, 50 + h, width, 0.1, 0);
          scale(zoomLeft);
          image(objekt, -250, 300);
          
          if (h > 1450) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        else if (direction == 2)
        {
          objekt = loadImage("oil1.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 50, 300);
          
          if(h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        else if (direction == 3)
        {
          objekt = loadImage("oil1.png");
          translate(800, 480);
          zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 250, 300);
          
          if(h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
            index = int(random(draw.length));
            direction = int(random(4));
            h = 0;
          }
        }
        break;
      }
    }
  
}

/*
float l;
float h;
PImage objekt;

class objekt {
   void drawObjekt(){
     
//------venstre felt-----------------------------
/*
     objekt = loadImage("sunliv.png");
     translate(800, 490);
     float zoomLeft = map(700,50 + l , width, 0.1, 0);
     scale(zoomLeft);
     image(objekt, -250, 100);
      l = l + 10;
     if(l > 1550) {
       l = 0;}

//------høgre felt--------------------------------------

     objekt = loadImage("øl.png");
     translate(800, 490);
     float zoomRight = map(700,50 + h, width, 0.3, 0);
     scale(zoomRight);
     image(objekt, 0, 100);
      h = h + 10;
     if(h > 1550) {
       h = 0;}
/*
     objekt = loadImage("oil.png");
     //bot = loadShape("sunliv.svg");
     translate(590, 570);
     float zoomLeft = map(200,50 + b, width, 0.1, 0);
     scale(zoomLeft);
     image(objekt, -450, 300);
       
}
}*/





/*float moveY;



int olX = 520;
int olY = 600;

int livX = 520;
int livY = 600;

boolean ol = false;

PImage olFlaske;
PImage sunLiv;

class objekt {

  void drawObjekt() {

    moveY = moveY + 5;                     //midlertidig. sender gjenstand i y rettning
    if (moveY > 1100) {
      moveY = 0;
    }

    olFlaske = loadImage("øl.png");        // ølflske
    image(olFlaske, olY, olY + moveY);
    
    sunLiv = loadImage("sunliv.png");      // liv
    image(sunLiv,livY,livX + moveY); 
    
    
    
  }
}*/