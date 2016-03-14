PImage GO;
float px;
float py;
float px1;
float py1;
class GroundObject {
 void drawGObject() { 
   
   if (millis() - aksT >= 20000) {
      aksO = aksO + 20;//20;
      aksT = millis();
    }
     px = px + 15;
     px1 = px1 + 15;
     py = py + 7.5;
     py1 = py1 + 7.5;
     
   if(py > 220) {
     px = 0;
     py = 0;
   }
   if(py1 > 90) {
     px1 = 0;
     py1 = 0;
}   
   if( level < 4 ) {                           // Draws desert with desert groundobjects.
  GO = loadImage("cactus.png");
  image(GO,500 - px,450 + py);
  GO = loadImage("cactus.png");
  image(GO,50 - px,675 + py);
  
  GO = loadImage("cactus.png");
  image(GO,1100 + px,450 + py);
  GO = loadImage("cactus.png");
  image(GO,1550 + px,675 + py);
   }
  
   if(level > 3 && level < 8) {                          // Draws forrest withe tree objects
  GO = loadImage("tre.png");
  image(GO,150 - px1,400 + py1);
  GO = loadImage("tre.png");
  image(GO,400 - px1,400 + py1);
  GO = loadImage("tre.png");
  image(GO,-50 - px1,500 + py1);
  GO = loadImage("tre.png");
  image(GO,200 - px1,500 + py1);
  GO = loadImage("tre.png");
  image(GO,0 - px1,600 + py1);
 
  GO = loadImage("tre.png");
  image(GO,1250 + px1,400 + py1);
  GO = loadImage("tre.png");
  image(GO,1000 + px1,400 + py1);
  GO = loadImage("tre.png");
  image(GO,1450 + px1,500 + py1);
  GO = loadImage("tre.png");
  image(GO,1200 + px1,500 + py1);
  GO = loadImage("tre.png");
  image(GO,1400 + px1,600 + py1);
  
 
  
  
     
   }
   if(level > 7) {                          // Draws snow landscapes ground objects.
  GO = loadImage("Snowman.png");
  image(GO,500 - px,450 + py);
  GO = loadImage("Snowman.png");
  image(GO,50 - px,675 + py);
  
  GO = loadImage("Snowman.png");
  image(GO,1100 + px,450 + py);
  GO = loadImage("Snowman.png");
  image(GO,1550 + px,675 + py);
     
   }
  
 }
}