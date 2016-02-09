
 float b;
class objekt {
   void drawObjekt(){
     objekt = loadImage("øl.png");
     image(objekt,520,600 + b);
     
     b = b + 10;
     if(b > 1100) {
       b = 0;}
}
}