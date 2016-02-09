import ddf.minim.*;

AudioPlayer player;
Minim minim;                                      //audio context

ground g = new ground();
road r = new road();
carSport cs = new carSport();
carHippie ch = new carHippie();
sky s = new sky();
objekt o = new objekt();

PImage phCarIntro;
PImage phFjell;

int score=0;
int startTime;

int rectXS, rectYS;                               // Posisjon til Sportsbil knapp
int rectSizeS = 90;                               // diameter av Sportsbil knapp
int rectXH, rectYH;                               // posisjon til  Hippiebil knapp
int rectSizeH = 90;                               // diameter av Hippiebil knapp

color rectColorSport, rectColorHippie;            //farge til knappene
color rectHighlight;                              // highlight farge til knapp               

boolean sportsBil = false;
boolean hippieBil = false;
//boolean startSportsBil = false;
//boolean startHippieBil = false;

//boolean intro=true;                               // meny

int state = 0;


void setup()
{
  size(1200, 1200);
  minim = new Minim(this);
  player = minim.loadFile("seenoevil.mp3", 2048);
  player.play();
  phFjell = loadImage("mountainsky250.jpg");

  rectColorSport = color(132, 0, 250);
  rectColorHippie = color(250, 130, 0);
  rectHighlight = color(0, 255, 130);

  rectXS = width/2-rectSizeS+100;
  rectYS= height/2-rectSizeS/10;

  rectXH = width/2-rectSizeH-100;
  rectYH= height/2-rectSizeH/10;
}

void draw()
{
  buttonUpdate(mouseX, mouseY);                          // tracker musen
  collisionUpdate();
  background(phFjell);


  switch(state) {
  case 0:    
    background(255);
    phCarIntro = loadImage("carintro.png");                 // intro bilde
    image(phCarIntro, -50, 150);
    fill(150);      
    strokeWeight(3); 
    fill(128, 128, 128);

    textSize(100);
    text("Runaway car", 350, 240);

    stroke(255);
    rect(rectXS, rectYS, rectSizeS, rectSizeS);       //knapp til sportsbil
    stroke(255);
    rect(rectXH, rectYH, rectSizeH, rectSizeH);       // knapp til hippie bil
    break;

  case 1:
    s.drawSky();
    g.drawGround();
    r.drawRoad();
    o.drawObjekt();
    cs.drawSportsCar();
    startTime = millis();

    fill(0);
    textSize(20);
    text("Tid: " + millis()/1000 + " Sekund", 1020, 20);
    textSize(20);
    text("Poeng: " + score, 1020, 60);
    break;

  case 2:
    s.drawSky();
    g.drawGround();
    r.drawRoad();
    o.drawObjekt();
    ch.drawHippieCar();
    startTime = millis();
    fill(0);
    textSize(20);
    text("Tid: " + millis()/1000 + " Sekund", 1020, 20);
    textSize(20);
    text("Poeng: " + score, 1020, 60);
    break;

  case 3:   // spill avsluttet med score og tid.
    text("Spill slutt", 380, 240);
    text("Poeng", 600, 440);
    text(score, 600, 440);
    text("Tid brukt: ", 600, 600);
    text(startTime, 600, 600);
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



void mousePressed() 
{ 
  if (sportsBil)
  {    
    startSportsBil();
  } 

  if (hippieBil)
  {   
    startHippieBil();
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