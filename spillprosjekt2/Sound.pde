import ddf.minim.*;

AudioPlayer carmusic;
AudioPlayer beer;
AudioPlayer carCrash;
AudioPlayer breaking;
AudioPlayer intro;

Minim minim;  
int soundTime;

class sound {
  void carMusic() { 
      carmusic = minim.loadFile("seenoevil.mp3");
      carmusic.play();
      carmusic.loop();
    
    }
  void beerSound() {
    // beer = minim.loadFile("Beer.mp3");
     beer.play();
     
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
      intro = minim.loadFile("Coming Soon.mp3");
      intro.play();
      
  }
}