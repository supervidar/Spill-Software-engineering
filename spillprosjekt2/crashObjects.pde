int IDLE = 0;
int OL = 1;
int LIV = 2;
int OIL = 3;
int BCAR = 4;
int POCAR = 5;
int KU = 6;
int OLDCAR = 7;
int KAFFI = 8;
int YCAR = 9;

int PAPIR = 10;
int SET_IDLE = 11;
int crashCase = SET_IDLE;
int reactTime;





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
      } else if (index == 4) {
        crashCase = POCAR;
      } else if (index == 5) {
        crashCase = KU;
      } else if (index == 6) {
        crashCase = OLDCAR;
      } else if (index == 7) {
        crashCase = KAFFI;
      } else if (index == 8) {
        crashCase = YCAR;
      } else {
        crashCase = SET_IDLE;
      }

      break;


    case 1: //ØL

      //so.beerSound();


      if (carState == 3 ) {
        carState = 4;
      } else if (carState == 1)
      {
        carState = 2;
      }


      crash = 0;      
      crashCase = SET_IDLE;


      break;

    case 2: //LIV

      if (millis() - coTime >1000 && life == 1) {
        life = 2;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 2) {
        life = 3;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 3) {
        life = 3;
      } 
      crash = 0;
      crashCase = SET_IDLE;

      break;

    case 3: //OIL


      if (carState == 2 ) {
        carState = 4;
      } else if (carState == 1)
      {
        carState = 3;
      }


      crash = 0;
      crashCase = SET_IDLE;
      reactTime = millis();
      ;


      break;

    case 4: //BCAR

      if (millis() - coTime >1000 && life == 3) {
        life = 2;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 2) {
        life = 1;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 1) {
        endGame();
      } 

      crash = 0;
      crashCase = SET_IDLE;

      break;

    case 5: //POLICECAR

      if (millis() - coTime >1000 && life == 3) {
        life = 2;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 2) {
        life = 1;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 1) {
        endGame();
      } 
      crash = 0;
      crashCase = SET_IDLE;

      break;

    case 6: // KU

      if (millis() - coTime >1000 && life == 3) {
        life = 2;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 2) {
        life = 1;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 1) {
        endGame();
      } 
      crash = 0;
      crashCase = SET_IDLE;

      break;

    case 7: // OLDCAR

      if (millis() - coTime >1000 && life == 3) {
        life = 2;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 2) {
        life = 1;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 1) {
        endGame();
      } 
      crash = 0;
      crashCase = SET_IDLE;

      break;

    case 8: // KAFFI  

      if (carState == 4)
      {
        carState = 3;
      }else if(carState == 2)
      {
        carState = 1;
      }

      crash = 0;
      crashCase = SET_IDLE;

      break;

    case 9: // YCAR

      if (millis() - coTime >1000 && life == 3) {
        life = 2;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 2) {
        life = 1;
        h = h +200;
        coTime = millis();
      }
      if (millis() - coTime >1000 && life == 1) {
        endGame();
      } 
      crash = 0;
      crashCase = SET_IDLE;

      break;
      
      case 10: // PAPIR
      
      if (carState == 4)
      {
        carState = 2;
      }else if(carState == 3)
      {
        carState = 1;
      }
       crash = 0;
      crashCase = SET_IDLE;
      break;




    case 11: //SET_IDLE
      if (crash == 1) {
        crashCase = IDLE;
      } else {
        crashCase = SET_IDLE;
      }
      break;
    }
  }
}