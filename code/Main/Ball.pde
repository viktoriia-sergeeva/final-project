class Ball{
  public Ball[] sameColorBalls = new Ball[100];
  int size = 20;
  public color Color;
  public int[] position;
  public boolean isvoid;
  public int[] coordinates;
  public int[] boundaries;
  
  public Ball(int[] position,  boolean isball){
    int random = (int)(Math.random() * 4 + 1);
          if (random == 1) {Color = color(216, 191, 216);}
  else if (random == 2) {Color = color(173, 216, 230);}
  else if (random == 3) {Color = color(138, 154, 91);}
   else Color = color(255, 245, 238);
 
    this.position = position;
    isvoid = isball;
  }
  
  public void calculatePosition(int spacing){
    this.coordinates = new int[2];
    this.coordinates[0] = (40 + position[0] * spacing);
    this.coordinates[1] = (40 + position[1] * spacing);
    
    this.boundaries = new int[4];
    this.boundaries[0] = coordinates[0] - 10;
    this.boundaries[1] = coordinates[0] + 10;
    this.boundaries[2] = coordinates[1] - 10;
    this.boundaries[3] = coordinates[1] + 10;
    
    
  }
  
  public void drawBall(int spacing){
    this.calculatePosition(spacing);
    if (!isvoid)
    {
    fill(this.Color);
    circle(coordinates[0], coordinates[1], size);
    }
  }
  

  }
  
  
