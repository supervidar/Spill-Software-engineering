float b;
float b1;
class objekt {
   void drawObjekt(){
     objekt = loadImage("sunliv.png");
     translate(600, 580);
     float zoomLeft = map(600,50 + b, width, 0.1, 0);
     scale(zoomLeft);
     image(objekt, -250, 300);

     objekt = loadImage("øl.png");
     translate(600, 580);
     float zoomRight = map(600,50 + b1, width, 0.2, 0);
     scale(zoomRight);
     image(objekt, 0, 300);
/*
     objekt = loadImage("oil.png");
     //bot = loadShape("sunliv.svg");
     translate(590, 570);
     float zoomLeft = map(200,50 + b, width, 0.1, 0);
     scale(zoomLeft);
     image(objekt, -450, 300);*/

   
    b1 = b1 + 10;
     if(b1 > 1100) {
       b1 = 0;}
     b = b + 10;
     if(b > 1100) {
       b = 0;}
}
}