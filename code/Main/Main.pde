
BoardBalls One;
Trajectory T;
MyBall L;
boolean fff;
Interface newOne;

void setup(){
  size(800, 800);
    newOne = new Interface(20, 2);
   
    One = new BoardBalls(15);
  
   T = new Trajectory();
   L = new MyBall();
   fff = true;
}

int[] accountForWidth(int x){
  int[] widthh = new int[2];
  widthh[0] = x - 20;
  widthh[1] = x + 20;
  return widthh;
}

int[] accountForHeight(int y){
  int[] heightt = new int[2];
  heightt[0] = y - 20;
  heightt[1] = y + 20;
  return heightt;
}

void draw(){
 // Interface newOne = new Interface(20, 2);
  newOne.setInterface();
  One.drawBoard();
  T.drawTrajectory();
  
  //L.updateBall();
  L.drawBall();
  //boolean fff = true;
  
  if (mousePressed)//{
  //  // update velocity
//  }
  {
    
    //while (fff)
    {
        for (int i = 0; i < One.placement.length; i++)
    {
      for (int j = 0; j < One.placement[0].length; j++)
      {
        if ((One.placement[i][j].position[0] >= accountForWidth(L.position[0])[0] &&  One.placement[i][j].position[0] <= accountForWidth(L.position[0])[1]) && ( (One.placement[i][j].position[1] >= accountForHeight(L.position[1])[0] &&   One.placement[i][j].position[1] <= accountForHeight(L.position[1])[1]  )) )
        {
          fff = false;
          One.popBall(One.placement[i][j]);
        }
        //if (One.placement[i][j].position[1] >= accountForHeight(L.position[1])[0] &&   One.placement[i][j].position[1] <= accountForHeight(L.position[1])[1]  )
        //{
        //  fff = false;
        //  One.popBall(One.placement[i][j]);
        //}
        if (L.position[0] >= 800 || L.position[0] <= 0)
        {
          fff = false;
          One.popBall(One.placement[i][j]);
        }
        if (L.position[1] >= 800 || L.position[1] <= 0)
        {
          fff = false;
          One.popBall(One.placement[i][j]);
        }
        
      }
    }
    if (fff)
    {L.moveBall(T.ending_position);}
       
    }
    
    
  }
  
}
