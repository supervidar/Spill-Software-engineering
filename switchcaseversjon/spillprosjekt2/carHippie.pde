
int y = 500;
PImage phHippieCar;


class carHippie {
  void drawHippieCar() {                   // setter bilen i spillet.
    if (keyPressed && (key == CODED)) {

      if (keyCode == LEFT) {
        if (y >= 0) {
          y = y - 35;
          y--;
        }
        float y1 = constrain(y, 0, 700);
        phHippieCar = loadImage("hippiebilback2.png");   // car left image
        image(phHippieCar, y1, 900);
      }
      if (keyCode == RIGHT) {
        if ( y <= 800) {
          y = y + 35;
          y++;
        }
        float y2 = constrain(y, 0, 800); 
        phHippieCar = loadImage("hippiebilback2.png");  // rightcar image
        image(phHippieCar, y2, 900);
      }
    } else {
      float y3 = constrain(y, 50, 800);
      phHippieCar = loadImage("hippiebilback2.png");     // car rear image
      image(phHippieCar, y3, 900);
    }
  }
}