class theGrid
{
  void drawGrid(){
      for ( int i = 0 ; i < width ; i+=10) {    
      for ( int j = 0 ; j < height ; j+=10) {      
      line(i, j, i+10, j);
      line(i, j, i, j+10);      
      line(i+10, j, i+10, j+10);
     line(i, j+10, i+10, j+10);
      //line(i, j, 10, 10);

      }
      }
  }
}