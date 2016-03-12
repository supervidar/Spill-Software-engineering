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
   if(px > 200) {
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
  
   if(level > 4) {
  GO = loadImage("tre.png");
  image(GO,100 - px,400 + py);
  GO = loadImage("tre.png");
  image(GO,250 - px,400 + py);
  GO = loadImage("tre.png");
  image(GO,400 - px,400 + py);
  GO = loadImage("tre.png");
  image(GO,550 - px,400 + py);
  GO = loadImage("tre.png");
  image(GO,50 - px,500 + py);
  GO = loadImage("tre.png");
  image(GO,200 - px,500 + py);
  GO = loadImage("tre.png");
  image(GO,350 - px,500 + py);
  GO = loadImage("tre.png");
  image(GO,0 - px,600 + py);
  GO = loadImage("tre.png");
  image(GO,150 - px,600 + py);
  GO = loadImage("tre1.png");
  image(GO,-50 - px,700 + py);
  
  GO = loadImage("tre.png");
  image(GO,1500 + px,400 + py);
  GO = loadImage("tre.png");
  image(GO,1350 + px,400 + py);
  GO = loadImage("tre.png");
  image(GO,1200 + px,400 + py);
  GO = loadImage("tre.png");
  image(GO,1000 + px,400 + py);
  GO = loadImage("tre.png");
  
  image(GO,1550 + px,500 + py);
  GO = loadImage("tre.png");
  image(GO,1400 + px,500 + py);
  GO = loadImage("tre.png");
  image(GO,1200 + px,500 + py);
  
  GO = loadImage("tre.png");
  image(GO,1600 + px,600 + py);
  GO = loadImage("tre.png");
  image(GO,1400 + px,600 + py);
  GO = loadImage("tre1.png");
  image(GO,1650 + px,700 + py);
  
  
     
   }
    if(level >= 10) {
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