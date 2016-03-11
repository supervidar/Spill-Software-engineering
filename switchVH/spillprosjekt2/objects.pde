//<>// //<>// //<>// //<>//
float h;
float zoom;
float aksO = 20;
int direction = 0;

PImage objekt;

String[] draw = {"OL", "LIV", "OIL", "BCAR", "POCAR", 
  "KU", "OLDCAR", "KU2", "YCAR", "PAPIR"};
int index = 0;


class object {
  void drawObject() {

    h = h + aksO;
    if (millis() - aksT >= 20000) {
      aksO = aksO + 30;//20;
      aksT = millis();
    }

    switch(index)
    {
    case 0:    


      if (direction == 0) 
      {

        objekt = loadImage("øl.png");
        translate(800, 480);
       zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("øl.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("øl.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("øl.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      }
      break;

    case 1:

      if (direction == 0)                                    //venstre
      {
        objekt = loadImage("sunliv.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);

        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("sunliv.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450 ) {//|| (x1 > 450 && x1 < 750) && h == 1340) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("sunliv.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("sunliv.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break;


    case 2:       

      if (direction == 0) 
      {
        objekt = loadImage("oil1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("oil1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("oil1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("oil1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break;

    case 3:       

      if (direction == 0) 
      {
        objekt = loadImage("bCar1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("bCar1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("bCar1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("bCar1.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break;

    case 4:       

      if (direction == 0) 
      {
        objekt = loadImage("policeCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("policeCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("policeCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("policeCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break; 

    case 5:       

      if (direction == 0) 
      {
        objekt = loadImage("cow.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("cow.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("cow.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("cow.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break;   

    case 6:       

      if (direction == 0) 
      {
        objekt = loadImage("oldcar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("oldcar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("oldcar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("oldcar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break; 

    case 7:       

      if (direction == 0) 
      {
        objekt = loadImage("kaffi.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("kaffi.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("kaffi.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("kaffi.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break;     

    case 8:       

      if (direction == 0) 
      {
        objekt = loadImage("yCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("yCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("yCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("yCar.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break;

    case 9: //papir
      if (direction == 0) 
      {
        objekt = loadImage("papir.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -800, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(2));
          h = 0;
        }
      } else if (direction == 1)
      {
        objekt = loadImage("papir.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, -450, 300);
        if (h > 1450) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 2)
      {
        objekt = loadImage("papir.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 0, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      } else if (direction == 3)
      {
        objekt = loadImage("papir.png");
        translate(800, 480);
        zoom = map(600, 50 + h, width, 0.1, 0);
        scale(zoom);
        image(objekt, 400, 300);
        if (h > 1450) {             // (h > 1150 || (x1 > 450 && x1 < 600) && h == 900) {
          index = int(random(draw.length));
          direction = int(random(4));
          h = 0;
        }
      }
      break;
    }
  }
  int getIndex()
  {
    return index;
  }
}