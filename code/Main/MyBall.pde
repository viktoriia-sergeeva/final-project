class MyBall{
  int[] position = new int[2];
  public color C;
  
  public MyBall()
  {
    position[0] = 400;
    position[1] = 700;
    int random = (int)(Math.random() * 4 + 1);
  if (random == 1) {C = color(216, 191, 216);}
  else if (random == 2) {C = color(173, 216, 230);}
  else if (random == 3) {C = color(138, 154, 91);}
  else C = color(255, 245, 238);
    
  }
  
  public void drawBall()
  {
    fill(C);
    circle(position[0], position[1], 20);
  }
  
  public void moveBall(int[] p)
  {
    int z = int(     (    float(p[1])    / float(p[0])) + .5);
    if (z < 1)
    z = 1;
    if (p[0] > position[0])
    this.position[0]++;
    else
    this.position[0]--;
    if (p[1] > position[1])
    this.position[1] += z;
    else
    this.position[1] -= z;
    circle(position[0], position[1], 20);
    
    
    
  }
  
  
  
  
}
