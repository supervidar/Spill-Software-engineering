import ddf.minim.*;

AudioPlayer player;
Minim minim;          //audio context

ground g = new ground();
road r = new road();
car c = new car();
sky s = new sky();
objekt o = new objekt();
float a;
float a1;
PImage photo;
int x = 500;
boolean end=false;
boolean intro=true;
int score=0;
int startTime;
int timer;
float sc;
void setup()
{
  size(1200,1000);
  a = width/4;
  a1 = height/4;
  minim = new Minim(this);
  player = minim.loadFile("seenoevil.mp3", 2048);
  player.play();
   frameRate(30);
}
void draw()
{
  background(0,92,230);
   
  if(end) {
    s.drawSky();
    g.drawGround();
    r.drawRoad();
    c.drawCar();
    startTime = millis();
     fill(0);
     textSize(20);
     text("Tid: " + millis()/1000 + " Sekund",1020,20);
     textSize(20);
     text("Poeng: " + score,1020,60);
  }
  else{
      background(255);
      photo = loadImage("carintro.png");  // intro bilde
      image(photo,-50,150);
      fill(150);
      //rect(450,200,200,50);
      strokeWeight(3);
      rect(530,300,200,50);
      fill(128, 128, 128);
      if(intro) {                     // startside spill
        textSize(100);
        text("Runaway car",350,240);
        textSize(32);
        fill(0);
        text("Spill",600,340);
      }else {                         // spill avsluttet med score og tid.
      text("Spill slutt",380,240);
      text("Poeng",600,440);
      text(score,600,440);
      text("Tid brukt: ",600,600);
      text(startTime,600,600);
      }
  }
}


class sky {
  void drawSky() {      // himmelen med elementer
  
    //fill(255,255,0);
    //ellipse(100,100,100,100);  // sun
   //noStroke();
   photo = loadImage("sol.png");    
   image(photo,-150,-100); 
   
   
  photo = loadImage("sky.png");    
  image(photo,400,80);
  
  
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
    fill(255);
    rect(1000,0,200,30);   // tidstavle
    fill(255);
    rect(1000,40,200,30);   // poengtavle
  }
}

class ground {
  void drawGround() {          // lager bakken med elementer
   fill(179,107,0);
  ellipse(600,800,4000,800);  //ground
  }
}

class road {
  void drawRoad() {
  fill(102, 102, 102);
  rect(570,400,60,600);  // road
  triangle(-200,1000,570,400,570,1000); //road
  triangle(630,1000,630,400,1400,1000); //road
  fill(255,204,128);
  triangle(-250,1000,570,400,-200,1000); //sidelines
  triangle(1400,1000,630,400,1450,1000); //sidelines
  
  fill(255);    // field divider
   rect(598,400 + a1,2,10);
  rect(598,460 + a1,3,15);
  rect(598,525 + a1,5,20);
  rect(597,595 + a1,7,40);
  rect(597,685 + a1,9,60);
  rect(597,795 + a1,11,80);
  rect(596,925 + a1,13,100);

  a1 = a1 + 20;
  if ( a1 > 50) {
    a1 = 0;
     }
  if(keyPressed && (key == CODED)) {
   
   if(keyCode == DOWN) {
     a1 = a1 - 10;
     float x3 = constrain(x,50,800);
    photo = loadImage("car.png");     // car rear image
      image(photo,x3,700); 
    }
    if(keyCode == UP) {
     a1 = a1 + 20;
     float x3 = constrain(x,50,800);
    photo = loadImage("car.png");     // car rear image
      image(photo,x3,700); 
     
   }
     
   }
  
   if(a1 > 25) {
     score = score + 5;
   }
   
  }
}
 
class car {
 void drawCar() {                   // setter bilen i spillet.
 
  if(keyPressed && (key == CODED)) {
   
   if(keyCode == LEFT) {
     if (x >= 0) {
     x = x - 25;
     x--;
     }
     float x1 = constrain(x,0,700);
     photo = loadImage("carleft.png");   // car left image
     image(photo,x1,700);
   }
   if(keyCode == RIGHT) {
    if ( x <= 800) {
    x = x + 25;
     x++;
    }
   float x2 = constrain(x,0,800); 
   photo = loadImage("carright.png");  // rightcar image
   image(photo,x2,700);
   }
    
    
    
   
    } 
    else {
     float x3 = constrain(x,50,800);
    photo = loadImage("car.png");     // car rear image
      image(photo,x3,700);  
    }
   }
  }
 
class objekt {
   void drawObjekt(){

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