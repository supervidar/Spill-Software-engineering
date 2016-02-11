float a;

PImage photoSky;

class sky {
  void drawSky() {      // himmelen med elementer
   photoSky = loadImage("sun2.png");    
   image(photoSky,-100,-50); 
   photoSky = loadImage("sky2.png");    
   image(photoSky,400 + a,200);
   photoSky = loadImage("sky.png");
   image(photoSky,0 + a, 30);
   
   a = a + 0.5;
    if ( a > 1600) {
        a = -700; 
      }
    noStroke();
    fill(255);
    rect(1400,0,200,30);   // tidstavle
    fill(255);
    rect(1400,40,200,30);   // poengtavle
  }
}