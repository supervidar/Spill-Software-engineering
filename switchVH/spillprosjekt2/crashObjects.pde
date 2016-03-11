





class crashInObjects {
  void crashEffect(int crashCase) {

    if (crash == 1) {
      switch(crashCase) {

      case 0: //ØL

        if (millis() - coTime >1000) {
          so.beerSound();
          if (carState == 3 ) {
            carState = 4;
          } else if (carState == 1)
          {
            carState = 2;
          }

          coTime = millis();
        }


        crash = 0;      



        break;

      case 1: //LIV

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
        if (millis() - coTime > 1000 && life == 3) {
          life = 3;
        } 
        crash = 0;


        break;

      case 2: //OIL

        if (millis() - coTime >1000) {
          
          if (carState == 2 ) {
            carState = 4;
          }
          else if (carState == 1)
          {
            carState = 3;
          }
          coTime = millis();
          }
          crash = 0;

        break;

      case 3: //BCAR

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


        break;

      case 4: //POLICECAR

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


        break;

      case 5: // KU

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


        break;

      case 6: // OLDCAR

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


        break;

      case 7: // KAFFI  


       if (millis() - coTime >1000) {
         so.Cslurp();
        if (carState == 4)
        {
          carState = 3;
        } else if (carState == 2)
        {
          carState = 1;
        }
        coTime = millis();
       }

        crash = 0;


        break;

      case 8: // YCAR

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


        break;

      case 9: // PAPIR

        if (millis() - coTime >1000) {
          so.papirSound();                   
          coTime = millis();      
          if (carState == 4)
          {
            carState = 2;
          } else if (carState == 3)
          {
            carState = 1;
          }
        }

        crash = 0;

        break;
      }
    }
  }
}