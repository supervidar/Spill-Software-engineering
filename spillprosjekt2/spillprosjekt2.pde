                                

crashInObjects cra = new crashInObjects();
Snow sno = new Snow();
ground g = new ground();
road r = new road();
carSport cs = new carSport();
//carHippie ch = new carHippie();
sky s = new sky();
object o = new object();
plant pl = new plant();
collision coll = new collision();
score sco = new score();
sound so = new sound();
PFont font;
PImage end;
PImage Intro;
PImage background1;
PImage background2;
PImage background3;
int startTime = millis();

int rectXS, rectYS;                               // Posisjon til Sportsbil knapp
int rectSizeS = 90;                               // diameter av Sportsbil knapp
int rectXI, rectYI;                               // posisjon til  Hippiebil knapp
int rectSizeI = 100;                              // diameter av Hippiebil knapp
int rectXHS, rectYHS;                               // posisjon til  Hippiebil knapp
int rectSizeHS = 100;

//color rectColorSport, rectColorHippie;            //farge til knappene
//color rectHighlight;                              // highlight farge til knapp               

boolean sportsBil = false;
boolean introSide = false;
boolean hScore = false;
int state = 0;


void setup()
{
 
  size(1600, 900);
  minim = new Minim(this);
  background3 = loadImage("fjellfull.jpg");
  background2 = loadImage("fjellhalf.jpg");
  background1 = loadImage("fjelllow.jpg");
  end = loadImage("cGlass.png");
  
  font = createFont("game_over.ttf",32);
  textFont(font);
  
  //rectColorSport = color(132, 0, 250);
  //rectColorHippie = color(250, 130, 0);
  //rectHighlight = color(0, 255, 130);

  rectXS = width/2-rectSizeS+260;
  rectYS= height/2-270;

  rectXI = 1300;
  rectYI= 100;
  rectXHS = 1300;
  rectYHS= 250;
  beer = minim.loadFile("Beer.mp3");
  carmusic = minim.loadFile("seenoevil.mp3");
  breaking = minim.loadFile("break2.mp3");
  
  for(int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    directionS[i] = round(random(0, 1));
  }
   //reset(); 
   so.introSound();
}

void draw()
{
  buttonUpdate(mouseX, mouseY);                          // tracker musen

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
    
    break;

  case 1:                     // Starter spill med sportsbil.
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
    if( crashCase == OL) {
      cs.drawDrunkCar();
    }
    else if(crashCase == OIL) {
      cs.drawSlipperyCar();
    }
    else {
    cs.drawSportsCar();
    }
    startTime = millis();
    coll.collisionDetect();
    cra.crashEffect();
    fill(255);
    textSize(60);
    text("Level: " + level, 1420, 30);
    textSize(60);
    text("Poeng: " + score, 1420, 80);
    textSize(60);
    text("Liv: " + life, 1420, 130);
    
    sco.highScore();
    if(level > 4 ) {
       sno.drawSnow();
    }
   
   // sco.highScore();

    o.drawObject();
 
    break;

  case 2:                                          // Starter spill med hippibil.
    s.drawSky();
    g.drawGround();
    r.drawRoad();
    //ch.drawHippieCar();
    coll.collisionDetect();
    startTime = millis();
    fill(0);
    textSize(100);
    text("Tid: " + millis()/1000 + " Sekund", 1020, 20);
    textSize(20);
    text("Poeng: " + score, 1020, 60);
    o.drawObject();
    //pl.drawPlant();
    break;




  case 3:                                           // spill avsluttet med score og tid.
    
    background(end);
    stroke(0);
    fill(0);
    rect(rectXI, rectYI, rectSizeI, rectSizeI);
    rect(rectXHS, rectYHS, rectSizeHS, rectSizeHS);
    textSize(200);
    fill(0);   
    text("Game Over", 300, 240);
    text("Poeng: "+ score, 300, 340);   
    text("Tid: " + startTime/1000, 300, 440);   
    text("Navn: "+myName,300,540);
    fill(255);
    textSize(80);
    text("Nytt", 1310, 140);
    text("spill", 1310, 170);
    text("High", 1310, 290);
    text("score", 1310, 320);
 
    break;
    
  case 4:                                           // HighScore side.
    
    background(255);
    Intro = loadImage("carintro.png");                 // intro bilde
    image(Intro,0, 0);
    stroke(0);
    fill(0);
    rect(rectXI, rectYI, rectSizeI, rectSizeI);
    fill(255);
    textSize(80);
    text("Nytt", 1310, 140);
    text("spill", 1310, 170);
    sco.showScore();
   
    break;  
  }
}


void startSportsBil() {                 // Starter spill med sportsbil
    minim.stop();
    so.carMusic();
    state=1;   
    score = 0;
}

void startHippieBil()
{
  state=2;                                         // starter spill med hippiebil
  score=0;
  //pl.drawPlant();
}

void endGame()
{
   minim.stop();
  so.breakSound();
  so.crashSound();
  state=3;                                         // avslutter spill og viser poeng 
}
void intro () {
    reset();
    state = 0;
}

void reset() {
  life = 3;
  score = 0;
  level = 1;
  myName = " ";
  h = 0;
  aksC = 15;
  aksO = 15;
  aksT = 0;
  a1 = 0;
  l = 0;
  startTime = 0;
}


void buttonUpdate(int x, int y)
{
  if (overSport(rectXS, rectYS, rectSizeS, rectSizeS))         //sjekker om mus er over sportsbil knapp
  { 
    hScore = false;
    sportsBil = true; 
    introSide = false;
  }
  else if (overIntro(rectXI, rectYI, rectSizeI, rectSizeI)) //sjekker om mus er over introsideknapp
  { 
    introSide = true;
    hScore = false;
    sportsBil = false;
  }
  else if (overHscore(rectXHS, rectYHS, rectSizeHS, rectSizeHS)) //sjekker om mus er over highscoreknapp
  { 
    hScore = true;
    introSide = false;
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

  if (introSide)
  { 
    intro();    
  }
  if (hScore)
  {   
    state  = 4;
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
boolean overIntro(int x, int y, int width, int height)                        //kordinater til introknapp 
{ 
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) 
  {
    return true;
  } else 
  {
    return false;
  }
}
boolean overHscore(int x, int y, int width, int height)                        //kordinater til Highscore 
{ 
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) 
  {
    return true;
  } else 
  {
    return false;
  }
}