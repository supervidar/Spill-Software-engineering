
float moveY;



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
}