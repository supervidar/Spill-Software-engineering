import ddf.minim.*;

AudioPlayer player;
Minim minim;  

class sound {
  void carMusic() { 
      player = minim.loadFile("seenoevil.mp3");
      player.play();
    
    }
  void beerSound() {
      player = minim.loadFile("Beer.mp3");
      player.play();
  }
}