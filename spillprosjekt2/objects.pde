float b;
float b1;
float z;
class objekt {
   void drawObjekt(){
     b = b + 1.5;
    objekt = loadImage("sunliv.png");
    z = map(0,0, width, 10 + b, 100);
    image(objekt,600,590 + b,z,z);


   
  
    
     if(b > 110) {
       b = 0;}
}
}