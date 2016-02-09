float a;

class sky {
  void drawSky() {      // himmelen med elementer
   photo = loadImage("sun2.png");    
   image(photo,-100,-50); 
   photo = loadImage("sky2.png");    
   image(photo,400 + a,200);
   photo = loadImage("sky.png");
   image(photo,0 + a, 30);
   
   a = a + 0.5;
    if ( a > 1200) {
        a = -700; 
      }
    noStroke();
    fill(255);
    rect(1000,0,200,30);   // tidstavle
    fill(255);
    rect(1000,40,200,30);   // poengtavle
  }
}