float a;

PImage phSky;

class sky {
  void drawSky() {      // himmelen med elementer
    phSky = loadImage("sun2.png");    
    image(phSky, -100, -50); 
    phSky = loadImage("sky.png");    
    image(phSky, 400 + a, 150);
    image(phSky, 0 + a, 30);


    a = a + 0.9;
    if ( a > 1200) {
      a = -700;
    }
    noStroke();
    fill(255);
    rect(1000, 0, 200, 30);   // tidstavle
    fill(255);
    rect(1000, 40, 200, 30);   // poengtavle
  }
}