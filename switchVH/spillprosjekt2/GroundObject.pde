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
     py = py + 7.5;
    if(px > 445) {
      px = 0;
      py = 0;
    }
   if( level < 5) {
  GO = loadImage("cactus.png");
  image(GO,500 - px,450 + py);
  GO = loadImage("cactus.png");
  image(GO,50 - px,675 + py);
  
  GO = loadImage("cactus.png");
  image(GO,1100 + px,450 + py);
  GO = loadImage("cactus.png");
  image(GO,1550 + px,675 + py);
   }
   if(level >= 5) {
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