int IDLE = 0;
int OL = 1;
int LIV = 2;
int OIL = 3;
int BCAR = 4;
int SET_IDLE = 5;
int crashCase = SET_IDLE;







class crashInObjects {
  void crashEffect() {
    switch(crashCase) {



    case 0: //IDLE

      if (index == 0) {
        crashCase = OL;
      } else if (index == 1) {
        crashCase = LIV;
      } else if (index == 2) {
        crashCase = OIL;
      } else if (index == 3) {
        crashCase = BCAR;
      } else {
        crashCase = SET_IDLE;
      }

      break;


    case 1: //ØL
      player = minim.loadFile("Beer.mp3");
      player.play();
      




      crash = 0;
      crashCase = SET_IDLE;
      break;

    case 2: //LIV




      crash = 0;
      crashCase = SET_IDLE;
      break;

    case 3: //OIL




      crash = 0;
      crashCase = SET_IDLE;
      break;

    case 4: //BCAR




      crash = 0;
      crashCase = SET_IDLE;
      break;

    case 5: //SET_IDLE
      if (crash == 1) {
        crashCase = IDLE;
      } else {
        crashCase = SET_IDLE;
      }
      break;
    }
  }
}