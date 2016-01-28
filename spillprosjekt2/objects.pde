
 float b;
class objekt {
   void drawObjekt(){
     photo = loadImage("øl.png");
     image(photo,520,600 + b);
     
     b = b + 10;
     if(b > 1100) {
       b = 0;}
}
}