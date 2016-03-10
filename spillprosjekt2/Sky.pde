float a;

PImage photoSky;
PImage tavle;

class sky {
  void drawSky() {      // himmelen med elementer

    if (life == 3) {
      photoSky = loadImage("sunFull.png");    
      image(photoSky, -100, -50); 
      photoSky = loadImage("sky2full.png");    
      image(photoSky, 400 + a, 200);
      photoSky = loadImage("skyfull.png");
      image(photoSky, 0 + a, 30);

      a = a + 0.5;
      if ( a > 1600) {
        a = -700;
      }
      noStroke();
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 2); 
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 50);
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 100);
    }else if (life == 2) {
      photoSky = loadImage("sunHalf.png");    
      image(photoSky, -100, -50); 
      photoSky = loadImage("skySHalf.png");    
      image(photoSky, 400 + a, 200);
      photoSky = loadImage("skyBHalf.png");
      image(photoSky, 0 + a, 30);

      a = a + 0.5;
      if ( a > 1600) {
        a = -700;
      }
      noStroke();
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 2); 
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 50);
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 100);
    }else if (life == 1) {
      photoSky = loadImage("sunLow.png");    
      image(photoSky, -100, -50); 
      photoSky = loadImage("skySLow.png");    
      image(photoSky, 400 + a, 200);
      photoSky = loadImage("skyBLow.png");
      image(photoSky, 0 + a, 30);

      a = a + 0.5;
      if ( a > 1600) {
        a = -700;
      }
      noStroke();
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 2); 
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 50);
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 100);
    }
  }
}