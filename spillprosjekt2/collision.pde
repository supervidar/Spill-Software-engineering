int life = 3;
int coTime;
int crash = 0;

class collision {
 void collisionDetect() {
   if( h > 1450 || (x > 0 && x < 550) && direction == 0 && h > 1300) {
       if(millis() - coTime >1500 && life == 3) {
           life = 2;
           h = h +150;
           coTime = millis();
           crash = 1;
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
            h = h +150;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           endGame();
       }
   }
   if( h > 1450 || (x > 450 && x < 720) && direction == 1 && h > 1300) {
      if(millis() - coTime >1500 && life == 3) {
           life = 2;
            h = h +150;
           coTime = millis();
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
           h = h +150;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           endGame();
       }
   }
   if( h > 1450 || (x > 700 && x < 950) && direction ==2 && h > 1300) {
       if(millis() - coTime >1500 && life == 3) {
           life = 2;
           h = h +200;
           coTime = millis();
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
           h = h +200;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           state = 3;
       }
   }
   if( h > 1450 || (x > 850 && x < 1500) && direction == 3  && h > 1300) {
      if(millis() - coTime >1500 && life == 3) {
           life = 2;
           h = h +200;
           coTime = millis();
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
           h = h +200;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           endGame();
       } 
   }
 } 
}