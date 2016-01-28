
 float b;
class objekt {
   void drawObjekt(){
     photo = loadImage("øl.png");
     image(photo,550,400 + b);
     
     b = b + 10;
     if(b > 1100) {
       b = 0;}
}
}