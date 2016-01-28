import ddf.minim.*;

AudioPlayer player;
Minim minim;          //audio context

ground g = new ground();
road r = new road();
car c = new car();
sky s = new sky();
objekt o = new objekt();
PImage photo;
PImage photo1;
boolean end=false;
boolean intro=true;
int score=0;
int startTime;
int aks;
void setup()
{
  size(1200,1200);
  minim = new Minim(this);
  player = minim.loadFile("seenoevil.mp3", 2048);
  player.play();
  photo1 = loadImage("fjell3.png");
}
void draw()
{
 
  background(0,92,230);
   
  //if(end) {
    s.drawSky();
    g.drawGround();
    r.drawRoad();
    o.drawObjekt();
    c.drawCar();
     startTime = millis();
     fill(0);
     textSize(20);
     text("Tid: " + millis()/1000 + " Sekund",1020,20);
     textSize(20);
     text("Poeng: " + score,1020,60);
  /*}
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
      }
      else {                         // spill avsluttet med score og tid.
      text("Spill slutt",380,240);
      text("Poeng",600,440);
      text(score,600,440);
      text("Tid brukt: ",600,600);
      text(startTime,600,600);
      }
  }*/
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