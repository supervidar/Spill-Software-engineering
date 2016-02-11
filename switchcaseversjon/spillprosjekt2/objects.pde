float l;
float h;
PImage objekt;

class objekt {
   void drawObjekt(){
     
//------venstre felt-----------------------------

     objekt = loadImage("sunliv.png");
     translate(600, 580);
     float zoomLeft = map(600,50 + l , width, 0.1, 0);
     scale(zoomLeft);
     image(objekt, -250, 300);
      l = l + 10;
     if(l > 1100) {
       l = 0;}

//------høgre felt--------------------------------------

     objekt = loadImage("øl.png");
     translate(600, 580);
     float zoomRight = map(600,50 + h, width, 0.3, 0);
     scale(zoomRight);
     image(objekt, 0, 300);
      h = h + 10;
     if(h > 1100) {
       h = 0;}
/*
     objekt = loadImage("oil.png");
     //bot = loadShape("sunliv.svg");
     translate(590, 570);
     float zoomLeft = map(200,50 + b, width, 0.1, 0);
     scale(zoomLeft);
     image(objekt, -450, 300);*/
       
}
}





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