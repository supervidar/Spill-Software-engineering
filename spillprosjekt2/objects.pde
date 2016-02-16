float b;
float b1;
float zoomLeft;
class objekt {
   void drawObjekt(){
     objekt = loadShape("ok_øl.svgz");
    translate(600, 570);
     float zoomLeft = map(600,0 + b, width, 0.1, 0);
     scale(zoomLeft);
     shape(objekt);


   
  
     b = b + 80;
     if(b > 1200) {
       b = 0;}
}
}