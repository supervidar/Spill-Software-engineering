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
   if(px > 200) {
     px = 0;
     py = 0;
   }
   if(py1 > 90) {
     px1 = 0;
     py1 = 0;
}   
   if( level < 5) {
  GO = loadImage("cactus.png");
  image(GO,500 - px1,450 + py1);
  GO = loadImage("cactus.png");
  image(GO,50 - px1,675 + py1);
  
  GO = loadImage("cactus.png");
  image(GO,1100 + px1,450 + py1);
  GO = loadImage("cactus.png");
  image(GO,1550 + px1,675 + py1);
   }
  
   if(level > 4) {
  
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
    if(level >= 10) {
  GO = loadImage("Snowman.png");
  image(GO,500 - px1,450 + py1);
  GO = loadImage("Snowman.png");
  image(GO,50 - px1,675 + py1);
  
  GO = loadImage("Snowman.png");
  image(GO,1100 + px1,450 + py1);
  GO = loadImage("Snowman.png");
  image(GO,1550 + px1,675 + py1);
     
   }
  
 }
}