import ddf.minim.*;

AudioPlayer carmusic;
AudioPlayer intro;

AudioPlayer papir;
AudioPlayer beer;
AudioPlayer carCrash;
AudioPlayer breaking;
AudioPlayer sVoice;
AudioPlayer slurp;
AudioPlayer eTune;
AudioPlayer levelVoice;

Minim minim;  


class sound {
  void carMusic() { 
      carmusic = minim.loadFile("seenoevil.mp3");
      carmusic.setGain(-20.5);
      carmusic.play();
      carmusic.loop();
    
    }
  void beerSound() {
     beer = minim.loadFile("Beer.mp3");
     beer.play();
     
  }
  
   void Cslurp() {
     slurp = minim.loadFile("coffeSlurp.mp3");
     slurp.play();
     
  }
  void papirSound()
  {
        papir = minim.loadFile("papir.mp3");
        papir.play();
  }
  void crashSound() {
      carCrash = minim.loadFile("Carcrash.mp3");
      carCrash.play();
  }
  void breakSound() {
      breaking = minim.loadFile("break2.mp3");
      breaking.play();
      
  }
  void introSound() {
      intro = minim.loadFile("intro.mp3");
      intro.setGain(-15.5);
      intro.play();
      intro.loop();
      
  }
  void startVoice() {
    sVoice = minim.loadFile("Hang On To Your Seats 2.mp3");
    sVoice.play();
  }
   void endTune() {
    eTune = minim.loadFile("Coming Soon.mp3");
    eTune.play();
  }
  void levelVo() {
    levelVoice = minim.loadFile("Be Prepared 2.mp3");
    levelVoice.play();
  }
}