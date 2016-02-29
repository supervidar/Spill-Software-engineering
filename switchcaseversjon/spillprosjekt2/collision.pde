int life = 3;
int coTime;

class collision {
 void collisionDetect() {
   if( h > 1450 || (x > 200 && x < 450) && direction < 1 && h > 1340) {
       if(millis() - coTime >1500 && life == 3) {
           life = 2;
           coTime = millis();
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           state = 3;
       }
     
   /*  
     if(life == 3)
       {         
         life = 2;
       }else if(life ==2)
       {
         life = 1;
       }else if (life==1)
       {
         state = 3;
       }*/
   }
   if( h > 1450 || (x > 450 && x < 750) && direction < 2 && direction > 0 && h > 1340) {
      if(millis() - coTime >1500 && life == 3) {
           life = 2;
           coTime = millis();
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           state = 3;
       }
   }
   if( h > 1450 || (x > 750 && x < 1100) && direction > 1 && direction < 3  && h > 1340) {
       if(millis() - coTime >1500 && life == 3) {
           life = 2;
           coTime = millis();
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           state = 3;
       }
   }
   if( h > 1450 || (x > 1100 && x < 1500) && direction > 2  && h > 1340) {
      if(millis() - coTime >1500 && life == 3) {
           life = 2;
           coTime = millis();
       }
        if(millis() - coTime >1500 && life == 2) {
           life = 1;
           coTime = millis();
       }
        if(millis() - coTime >1000 && life == 1) {
           state = 3;
       } 
   }
 } 
}