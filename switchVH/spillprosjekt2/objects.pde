float l; //<>// //<>//
float h;
int direction = 1;

PImage objekt;

String[] draw = {"Ol", "Liv","oil"};
int index = 0;


class object {
  void drawObject() {

      
      switch(index)
      {
      case 0:    

        if (direction == 0)                                    //venstre
        {
          l = l + 10;
          objekt = loadImage("sunliv.png");
          translate(600, 580);
          float zoomLeft = map(600, 50 + l, width, 0.1, 0);
          scale(zoomLeft);
          image(objekt, -250, 300);
          coll.collectionDetection();
          if (l > 1150) {
            index = int(random(draw.length));
            direction = int(random(2));
            l = 0;
          }
        } else if (direction == 1)
        {
          h = h + 10;
          objekt = loadImage("sunliv.png");
          translate(600, 580);
          float zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 0, 300);
          coll.collectionDetection();
          if(h > 1150) {
            index = int(random(draw.length));
            direction = int(random(2));
            h = 0;
          }
        }
        break;

      case 1:       

        if (direction == 0) 
        {
          h = h + 10;
          objekt = loadImage("øl.png");
          translate(600, 580);
          float zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 0, 300);
          coll.collectionDetection();
          if (h > 1150) {
            index = int(random(draw.length));
            direction = int(random(2));
            h = 0;
          }
        } else if (direction == 1)
        {
          l = l + 10;
          objekt = loadImage("øl.png");
          translate(600, 580);
          float zoomLeft = map(600, 50 + l, width, 0.1, 0);
          scale(zoomLeft);
          image(objekt, -250, 300);
          coll.collectionDetection();
          if (l > 1150) {
            index = int(random(draw.length));
            direction = int(random(2));
            l = 0;
          }
        }
        break;
        
       case 2:       

        if (direction == 0) 
        {
          h = h + 10;
          objekt = loadImage("oil1.png");
          translate(600, 580);
          float zoomRight = map(600, 50 + h, width, 0.1, 0);
          scale(zoomRight);
          image(objekt, 0, 300);
          coll.collectionDetection();
          if (h > 1150) {
            index = int(random(draw.length));
            direction = int(random(2));
            h = 0;
          }
        } else if (direction == 1)
        {
          l = l + 10;
          objekt = loadImage("oil1.png");
          translate(600, 580);
          float zoomLeft = map(600, 50 + l, width, 0.1, 0);
          scale(zoomLeft);
          image(objekt, -250, 300);
          coll.collectionDetection();
          if (l > 1150) {
            index = int(random(draw.length));
            direction = int(random(2));
            l = 0;
          }
        }
        break;
      }
    }
  
}