import processing.sound.*;
SoundFile file;
ground g = new ground();
car c = new car();
sky s = new sky();
float a;
float a1;
PImage photo;
int x = 500;
boolean end=false;
boolean intro=true;
int score=0;

void setup()
{
  size(1200,1000);
  a = width/4;
  a1 = height/4;
  file = new SoundFile(this, "seenoevil.mp3");
  file.play();
}
void draw()
{
  background(0,92,230);
  if(end){
    s.drawSky();
    g.drawGround();
    c.drawCar();
  }
  else{
      background(255);
      photo = loadImage("carintro.png");
      image(photo,-50,150);
      fill(204);
      //rect(450,200,200,50);
      rect(530,300,200,50);
      fill(102, 51, 0);
      if(intro){
        textSize(100);
        text("Runaway car",350,240);
        textSize(32);
        text("Spill",600,340);
      }else{
      text("Spill slutt",170,140);
      text("Poeng",180,240);
      text(score,280,240);
      }
  }
}


class sky {
  void drawSky() {
    fill(255,255,0);
    ellipse(100,100,100,100);  // sun
   noStroke();
    fill(255);
  ellipse( a,100,200,50);  //cloud
  ellipse(a,100,100,70);  //cloud
  stroke(0);
  fill(0);
  ellipse( a - 15,95,10,10);  //cloud
  ellipse( 15 + a,95,10,10);  //cloud
  noFill();
  strokeWeight(4);
  arc(a,110, 30,30,0,PI);
  noStroke();
  fill(255);
  ellipse(400 + a,300,150,50);  //cloud
  ellipse(400 + a,300,100,70);  //cloud
  stroke(0);
  fill(0);
  ellipse( 385 + a,290,10,10);  //cloud
  ellipse( 415 + a,290,10,10);  //cloud
  noFill();
  arc(400 + a,305, 30,30,0,PI);
  noStroke();
  a = a + 0.3;
  if ( a > 1400) {
    a = -400; }
  }
}

class ground {
  void drawGround() {
   fill(179,107,0);
  ellipse(600,800,4000,800);  //ground
  fill(255,204,128);
  triangle(280,1000,498,400,500,1000); //sidelines
  triangle(720,1000,920,1000,702,400); //sidelines
  fill(102, 102, 102);
  rect(500,400,200,600);  // road
  triangle(300,1000,500,400,500,1000); //road
  triangle(700,1000,900,1000,700,400); //road
  
  fill(255);           // field divider
  rect(605,405 + a1,5,20);
  rect(605,455 + a1,5,20);
  rect(605,505 + a1,5,20);
  rect(605,555 + a1,5,20);
  rect(605,605 + a1,5,20);
  rect(605,655 + a1,5,20);
  rect(605,705 + a1,5,20);
  rect(605,755 + a1,5,20);
  rect(605,805 + a1,5,20);
  rect(605,855 + a1,5,20);
  rect(605,905 + a1,5,20);
 rect(605,955 + a1,5,20);
  a1 = a1 + 7;
  if ( a1 > 50) {
    a1 = 0;
   
  }
  }
  }
class car {
 void drawCar() {
   float x3 = constrain(x,330,680);
    photo = loadImage("car.png");
      image(photo,x3,750); 
 
  if(keyPressed && (key == CODED)) {
   
   if(keyCode == LEFT) {
     x = x - 10;
     x--;
     float x1 = constrain(x,280,670);
     photo = loadImage("carleft.png");
     image(photo,x1,750);
   }
   if(keyCode == RIGHT) {
    x = x + 10;
     x++;
   float x2 = constrain(x,280,650); 
   photo = loadImage("carright.png");
   image(photo,x2,750);
   }
    }  
   }
  }
void reset(){
     end=true;
     score=0;
     
    }
    void mousePressed(){
    
     intro=false;
     if(end==false){
       reset();
     }
    }
    void keyPressed(){
     
     intro=false;
     if(end==false){
       reset();
     }
    }