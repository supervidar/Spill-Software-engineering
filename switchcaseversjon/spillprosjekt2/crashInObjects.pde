int IDLE = 0;
int OL = 1;
int LIV = 2;
int OIL = 3;
int BCAR = 4;
int crashCase = IDLE;




class crashInObjects {
  void drawObject() {
    switch(crashCase) {

    case IDLE:
      if (index = 0) {
        crashCase = OL;
      } else if (index = 1) {
        crashCase = LIV;
      } else if (index = 2) {
        crashCase = OIL;
      }

      break;


    case OL:


      break;

    case LIV:




      break;

    case OIL:




      break;

    case BCAR:




      break;
    }
  }
}