class Ball{
  public Ball[] sameColorBalls = new Ball[100];
  int size = 20;
  public color Color;
  public int[] position;
  public boolean isvoid;
  
  public Ball(int[] position,  boolean isball){
    int random = (int)(Math.random() * 4 + 1);
          if (random == 1) {Color = color(216, 191, 216);}
  else if (random == 2) {Color = color(173, 216, 230);}
  else if (random == 3) {Color = color(138, 154, 91);}
   else Color = color(255, 245, 238);
 
    this.position = position;
    isvoid = isball;
  }
  
  public void drawBall(int spacing){
    if (!isvoid)
    {
    fill(this.Color);
    circle(40 + position[0] * spacing, 40 + position[1] * spacing, size);
    }
  }
  

  }
  
  
