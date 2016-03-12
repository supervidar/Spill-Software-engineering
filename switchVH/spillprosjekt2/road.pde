int level;
int l;
float a1;
int aksT;
float aksC = 10;
class road {
  void drawRoad() {
  fill(102, 102, 102);
  rect(770,500,60,600);                          // road
  triangle(100,900,770,500,800,900);             //road
  triangle(830,900,830,500,1500,900);             //road
  if(level > 9)
  {
    fill(255, 235, 204);
    triangle(-30,900,770,500,100,900);             //sidelines
    triangle(1500,900,830,500,1630,900); 
  }
  else {
     fill(255,204,128);
     triangle(-30,900,770,500,100,900);             //sidelines
     triangle(1500,900,830,500,1630,900);            //sidelines
  }
  
  
  fill(255);                                  // field divider
   rect(798,500 + a1,2,10);
  rect(798,560 + a1,3,15);
  rect(798,625 + a1,5,20);
  rect(797,695 + a1,7,40);
  rect(797,785 + a1,9,60);
  rect(797,895 + a1,11,80);
  rect(796,1025 + a1,13,100);
  level = 1;                             // Increases level  by time
  level = level + l;
  a1 = a1 + aksC;                        // Increases accleration by time
  if(millis() - aksT >= 20000) {         
     aksC += 2;
     l += 1;
    aksT = millis();
  }
 
  if ( a1 > 50) {                         // counts score by distance driving
       score = score + 50;
       a1 = 0;
     }
  
  
 fill(255,0,0);
 rect(300,700,100,2);
   fill(0,255,0);
  rect(400,700,100,2);
 fill(255,0,0);
 rect(500,700,100,2);
     fill(0,255,0);
  rect(600,700,100,2);
 fill(255,0,0);
 rect(700,700,100,2);
   fill(0,255,0);
  rect(800,700,100,2);
 fill(255,0,0);
 rect(900,700,100,2);
  fill(0,255,0);
  rect(1000,700,100,2);
 fill(255,0,0);
 rect(1100,700,100,2);
  
  }
}