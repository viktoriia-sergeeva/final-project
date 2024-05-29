class BoardBalls{
  
  int spacing;
  Ball[][] placement;
  int ballSize = 10;
  int boarderThickness = 20;
  
  public BoardBalls(int spacing){
    this.spacing = spacing;
    int n = 0;
    placement = new Ball[49] [(int)(height*0.66666 ) / (spacing + ballSize)];
    for (int i = 0; i < placement.length; i++)
    {
      for (int j = 0; j < placement[0].length; j++)
      {
        if (n%2==0)
        {
          //int random = (int)(Math.random() * 4 + 1);
          //System.out.println(random);
          int[] p = new int[2];
          p[0] = i;
          p[1] = j;
  //        color CC = color(0);
  //        if (random == 1) {CC = color(216, 191, 216);}
  //else if (random == 2) {CC = color(173, 216, 230);}
  //else if (random == 3) {CC = color(138, 154, 91);}
  // else CC = color(255, 245, 238);
  
          placement[i][j] = new Ball(p, true);
        }
        else
        {
        //  color c = color(0);
          int[] p = new int[2];
          p[0] = i;
          p[1] = j;
          placement[i][j] = new Ball(p, false);
        }
        n++;
      }
      if (placement.length % 2 == 0)
      n++;
    }
  }
  
  public void drawBoard(){
    int x = boarderThickness + 5;
    int y = boarderThickness + 5;
    for (int i = 0; i < this.placement.length; i++)
    {
      for (int j = 0; j < this.placement[0].length; j++)
      {
        this.placement[i][j].drawBall(spacing);
      }
      
    }
    
  }
  
  
  
  
}
