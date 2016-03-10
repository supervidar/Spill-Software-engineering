int quantity = 500;
float [] xPosition = new float[quantity];
float [] yPosition = new float[quantity];
int [] flakeSize = new int[quantity];
int [] directionS = new int[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 5;


class Snow {
 void drawSnow() { 
        //background(0);
  
  for(int i = 0; i < xPosition.length; i++) {
    
    ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);
    
    if(directionS[i] == 0) {
      xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    } else {
      xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    }
    
    yPosition[i] += flakeSize[i] + directionS[i]; 
    
    if(xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
      xPosition[i] = random(0, width);
      yPosition[i] = -flakeSize[i];
    }
  
  } 
  
}
}