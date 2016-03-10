int life = 3;
int coTime;
int crash = 0;

class collision {
 void collisionDetect() {
   if( h > 1450 || (x > 0 && x < 550) && direction == 0 && h > 1300) {
       
        crash = 1;
      
       }
  
   if( h > 1450 || (x > 450 && x < 720) && direction == 1 && h > 1300) {
        
        crash = 1;
       
   }
   if( h > 1450 || (x > 700 && x < 950) && direction == 2 && h > 1300) {
       
        crash = 1;
      
   }
   if( h > 1450 || (x > 850 && x < 1500) && direction == 3  && h > 1300) {
     
        crash = 1;
   }
 } 
}