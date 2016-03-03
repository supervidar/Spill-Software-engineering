import ddf.minim.*;

AudioPlayer carmusic;
AudioPlayer beer;
AudioPlayer looser;
AudioPlayer breaking;
Minim minim;  

class sound {
  void carMusic() { 
     // carmusic = minim.loadFile("seenoevil.mp3");
      carmusic.play();
    
    }
  void beerSound() {
  //    beer = minim.loadFile("Beer.mp3");
     beer.play();
  }
  void looserSound() {
      looser = minim.loadFile("Sad.mp3");
      looser.play();
  }
  void breakSound() {
      //breaking = minim.loadFile("break2.mp3");
      breaking.play();
      
  }
}