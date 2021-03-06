import ddf.minim.*;

AudioPlayer player;
Minim minim;                                      //audio context

ground g = new ground();
road r = new road();
carSport cs = new carSport();
carHippie ch = new carHippie();
sky s = new sky();
object o = new object();
plant pl = new plant();
collision coll = new collision();
score sco = new score();
PFont font;

PImage end;
PImage Intro;
PImage background1;
PImage background2;
PImage background3;
int score=0;
int startTime;

int rectXS, rectYS;                               // Posisjon til Sportsbil knapp
int rectSizeS = 90;                               // diameter av Sportsbil knapp
int rectXH, rectYH;                               // posisjon til  Hippiebil knapp
int rectSizeH = 100;                               // diameter av Hippiebil knapp

color rectColorSport, rectColorHippie;            //farge til knappene
color rectHighlight;                              // highlight farge til knapp               

boolean sportsBil = false;
boolean hippieBil = false;

int state = 0;
String myName = "";


void setup()
{
 
  size(1600, 900);
  minim = new Minim(this);
  player = minim.loadFile("seenoevil.mp3", 2048);
  player.play();
  background3 = loadImage("fjellfull.jpg");
  background2 = loadImage("fjellhalf.jpg");
  background1 = loadImage("fjelllow.jpg");
  end = loadImage("cGlass.png");
  
  font = createFont("game_over.ttf",32);
  textFont(font);
  
  rectColorSport = color(132, 0, 250);
  rectColorHippie = color(250, 130, 0);
  rectHighlight = color(0, 255, 130);

  rectXS = width/2-rectSizeS+260;
  rectYS= height/2-270;

  rectXH = 1300;
  rectYH= 100;


 
}

void draw()
{
  buttonUpdate(mouseX, mouseY);                          // tracker musen
  //background(background);

  switch(state) {
  case 0:    
    background(255);
    Intro = loadImage("carintro.png");                 // intro bilde
    image(Intro, -50, 0);
    fill(150);      
    strokeWeight(3); 
    fill(128, 128, 128);
    
    rect(695,200,200,50);
    
    textSize(70);
    fill(0);
    text("Navn:",600,240);
    text(myName, 700, 240); 
    fill(0);
    textSize(300);
    text("Runaway car", 450, 140);
    stroke(255);
    rect(rectXS, rectYS, rectSizeS, rectSizeS);    //knapp til sportsbil
    textSize(100);
    fill(250);
    text("Spill",975,230);
   // stroke(255);
   // rect(rectXH, rectYH, rectSizeH, rectSizeH);       // knapp til hippie bil
    break;

  case 1:                     // Starter dpill med sportsbil.
    if(life == 3){
      background(background3);
    }else if(life == 2){
      background(background2);
    }else if(life == 1){
      background(background1);
    }
    s.drawSky();
    g.drawGround();
    r.drawRoad();
    cs.drawSportsCar();
    //grid.drawGrid();
    startTime = millis();
    coll.collisionDetect();
    fill(255);
    textSize(60);
    text("Level: " + level, 1420, 30);
    textSize(60);
    text("Poeng: " + score, 1420, 80);
    textSize(60);
    text("Liv: " + life, 1420, 130);
    //pl.drawPlant();
    
    o.drawObject();
    

    break;

  case 2:                                          // Starter spill med hippibil.
    s.drawSky();
    g.drawGround();
    r.drawRoad();
    ch.drawHippieCar();
    coll.collisionDetect();
    startTime = millis();
    fill(0);
    textSize(100);
    text("Tid: " + millis()/1000 + " Sekund", 1020, 20);
    textSize(20);
    text("Poeng: " + score, 1020, 60);
    o.drawObject();
    
    break;




  case 3:                                           // spill avsluttet med score og tid.
    
    background(end);
    stroke(0);
    fill(255);
    rect(rectXH, rectYH, rectSizeH, rectSizeH);
    textSize(200);
    fill(0);   
    text("Game Over", 300, 240);
    text("Poeng: "+ score, 300, 340);   
    text("Tid: " + startTime/1000, 300, 440);   
    text("Navn: "+myName,300,540);
    textSize(80);
    text("Nytt", 1310, 140);
    text("spill", 1310, 170);
    sco.highScore();
    break;
  }
}


void startSportsBil() {
  state=1;                                         // starter spill mes sportsbil
  score=0;
}

void startHippieBil()
{
  state=2;                                         // starter spill med hippiebil
  score=0;
}

void endGame()
{
  
  state=3;                                         // avslutter spill og viser poeng
  
}


void buttonUpdate(int x, int y)
{
  if (overSport(rectXS, rectYS, rectSizeS, rectSizeS))         //sjekker om mus er over sportsbil knapp
  { 
    sportsBil = true; 
    hippieBil = false;
  } else if (overHippie(rectXH, rectYH, rectSizeH, rectSizeH)) //sjekker om mus er over sportsbilknapp
  { 
    hippieBil = true;
    sportsBil = false;
  }
}

void keyPressed()
{
  if (keyCode == BACKSPACE)
  {
    if (myName.length()>0)
    {
      myName = myName.substring(0, myName.length()-1);
    }
  } else if (keyCode == DELETE)
  {
    myName ="";
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT)
  {
    myName = myName + key;
  }
}



void mousePressed() 
{ 
  if (sportsBil)
  {    
    startSportsBil();
  } 

  if (hippieBil)
  {   
    state = 0;
  }
} 

boolean overSport(int x, int y, int width, int height)                         //kordinater til sportsbil
{ 
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) 
  {
    return true;
  } else 
  {
    return false;
  }
}
boolean overHippie(int x, int y, int width, int height)                        //kordinater til hippiebil 
{ 
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) 
  {
    return true;
  } else 
  {
    return false;
  }
}