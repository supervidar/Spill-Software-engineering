

class collision
{
  void collectionDetection()
  {
    if(h > 1150 || (x1 > 450 && x1 < 600) && h == 1080)
    {
      state = 3;      
    }else if(h > 1150 || (x1 > 300 && x1 < 450) && h == 1080)
    {
      state = 3;
    }
    else if(h > 1150 || (x1 > 150 && x1 < 300) && h == 1080)
    {
      state = 3;
    }
  }
}