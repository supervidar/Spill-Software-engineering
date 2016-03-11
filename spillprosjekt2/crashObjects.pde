<<<<<<< Updated upstream

=======
//int IDLE = 0;
//int OL = 1;
//int LIV = 2;
//int OIL = 3;
//int BCAR = 4;
//int POCAR = 5;
//int KU = 6;
//int OLDCAR = 7;
//int KAFFI = 8;
//int YCAR = 9;

//int PAPIR = 10;
//int SET_IDLE = 11;
>>>>>>> Stashed changes

//int reactTime;
int crashCase;




class crashInObjects {
<<<<<<< Updated upstream
  void crashEffect(int crashCase) {

    if (crash == 1) {
      switch(crashCase) {
=======
  void crashEffect( int crashCase) {
    
    if (crash == 1){
    
    switch(crashCase) {



    //case 0: //IDLE

    //  if (index == 0) {
    //    crashCase = OL;
    //  } else if (index == 1) {
    //    crashCase = LIV;
    //  } else if (index == 2) {
    //    crashCase = OIL;
    //  } else if (index == 3) {
    //    crashCase = BCAR;
    //  } else if (index == 4) {
    //    crashCase = POCAR;
    //  } else if (index == 5) {
    //    crashCase = KU;
    //  } else if (index == 6) {
    //    crashCase = OLDCAR;
    //  } else if (index == 7) {
    //    crashCase = KAFFI;
    //  } else if (index == 8) {
    //    crashCase = YCAR;
    //  } else {
    //    crashCase = SET_IDLE;
    //  }

    //  break;


    case 0: //ØL

     
      if (carState == 3 ) {
       carState = 4;
      } else if (carState == 1)
      {
       carState = 2;
      }
      //bottle();
      //so.beerSound();
      crash = 0;      
      //crashCase = SET_IDLE;
>>>>>>> Stashed changes

      case 0: //ØL

        so.beerSound();

<<<<<<< Updated upstream
        if (millis() - coTime >1000) {
          if (carState == 3 ) {
            carState = 4;
          } else if (carState == 1)
          {
            carState = 2;
          }
          coTime = millis();
        }

=======
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
      if (millis() - coTime >1000 && life == 3) {
        life = 3;
      } 
      crash = 0;
     // crashCase = SET_IDLE;
>>>>>>> Stashed changes

        crash = 0;      

<<<<<<< Updated upstream
=======
    case 2: //OIL
>>>>>>> Stashed changes


        break;

      case 1: //LIV

<<<<<<< Updated upstream
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
=======
      crash = 0;
     // crashCase = SET_IDLE;
      
>>>>>>> Stashed changes


        break;

<<<<<<< Updated upstream
      case 2: //OIL
=======
    case 3: //BCAR
>>>>>>> Stashed changes

        if (millis() - coTime >1000) {

<<<<<<< Updated upstream
=======
      crash = 0;
      //crashCase = SET_IDLE;
>>>>>>> Stashed changes

          if (carState == 2 ) {
            carState = 4;
          } else if (carState == 1)
          {
            carState = 3;
          }
          coTime = millis();
        }
        crash = 0;

<<<<<<< Updated upstream

=======
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
     // crashCase = SET_IDLE;
>>>>>>> Stashed changes

        break;

<<<<<<< Updated upstream
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
=======
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
     // crashCase = SET_IDLE;
>>>>>>> Stashed changes

        crash = 0;

<<<<<<< Updated upstream

        break;

      case 4: //POLICECAR
=======
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
     // crashCase = SET_IDLE;

      break;

    case 7: // KAFFI  

      if (carState == 4)
      {
        carState = 3;
      }else if(carState == 2)
      {
        carState = 1;
      }

      crash = 0;
     // crashCase = SET_IDLE;
>>>>>>> Stashed changes

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

<<<<<<< Updated upstream

        break;
=======
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
     // crashCase = SET_IDLE;

      break;
      
      case 9: // PAPIR
      
      if (carState == 4)
      {
        carState = 2;
      }else if(carState == 3)
      {
        carState = 1;
      }
       crash = 0;
     // crashCase = SET_IDLE;
      break;
>>>>>>> Stashed changes

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


<<<<<<< Updated upstream
        break;

      case 7: // KAFFI  

        

          if (carState == 4)
          {
            carState = 3;
          } else if (carState == 2)
          {
            carState = 1;
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

        

          if (carState == 4)
          {
            carState = 2;
          } else if (carState == 3)
          {
            carState = 1;
          }
          if (millis() - coTime >1000) {
          coTime = millis();
          }
        crash = 0;

        break;
      }
=======
    //case 10: //SET_IDLE
    //  if (crash == 1) {
    //    crashCase = IDLE;
    //  } else {
    //    crashCase = SET_IDLE;
    //  }
    //  break;
    }
>>>>>>> Stashed changes
    }
  }
}