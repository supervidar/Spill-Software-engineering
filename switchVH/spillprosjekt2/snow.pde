int count = 1000;
float [] xP = new float[count];
float [] yP = new float[count];
int [] snowSize = new int[count];
int [] directionS = new int[count];
int minSnowSize = 1;
int maxSnowSize = 5;


class Snow {
 void drawSnow() { 
        //background(0);
  fill(255);
  for(int i = 0; i < xP.length; i++) {
    
    ellipse(xP[i], yP[i], snowSize[i], snowSize[i]);
    
    if(directionS[i] == 0) {
      xP[i] += map(snowSize[i], minSnowSize, maxSnowSize, .1, .5);
    } else {
      xP[i] -= map(snowSize[i], minSnowSize, maxSnowSize, .1, .5);
    }
    
    yP[i] += snowSize[i] + directionS[i]; 
    
    if(xP[i] > width + snowSize[i] || xP[i] < -snowSize[i] || yP[i] > height + snowSize[i]) {
      xP[i] = random(0, width);
      yP[i] = -snowSize[i];
    }
  
  }

}
}