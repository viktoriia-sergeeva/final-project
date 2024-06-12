
BoardBalls One;
Trajectory T;
MyBall L;
boolean fff;
boolean hasBeenPopped;
Interface newOne;
boolean newBallNeeded;
boolean gameEnded;


void setup(){
  size(800, 800);
    newOne = new Interface(20, 2);
   
    One = new BoardBalls(15);
  
   T = new Trajectory();
   L = new MyBall();
   fff = true;
   hasBeenPopped = false;
   newBallNeeded = false;
   gameEnded = false;
}

int[] accountForWidth(int x){
  int[] widthh = new int[2];
  widthh[0] = x - 10;
  widthh[1] = x + 10;
  return widthh;
}

int[] accountForHeight(int y){
  int[] heightt = new int[2];
  heightt[0] = y - 10;
  heightt[1] = y + 10;
  return heightt;
}

void draw(){

 // Interface newOne = new Interface(20, 2);
  newOne.setInterface();
  One.drawBoard();
  T.drawTrajectory();
 
  

  if (newBallNeeded)
  {
    newBallNeeded = false;
    L = new MyBall();
    hasBeenPopped = false;
  }
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


        if 
       ( 
       (One.placement[i][j].isvoid != true)
       &&
       (
       (
       (One.placement[i][j].boundaries[0] >= accountForWidth(L.position[0])[0] &&  One.placement[i][j].boundaries[0] <= accountForWidth(L.position[0])[1])
        ||
        (One.placement[i][j].boundaries[1] >= accountForWidth(L.position[0])[0] &&  One.placement[i][j].boundaries[1] <= accountForWidth(L.position[0])[1])
        )
        &&
       ( 
       (One.placement[i][j].boundaries[2] >= accountForHeight(L.position[1])[0] &&   One.placement[i][j].boundaries[2] <= accountForHeight(L.position[1])[1]  )
       ||
         (One.placement[i][j].boundaries[3] >= accountForHeight(L.position[1])[0] &&   One.placement[i][j].boundaries[3] <= accountForHeight(L.position[1])[1]) 
         )
         )
         )
        
        
        
 

        {
          
          newBallNeeded = true;
          if (One.placement[i][j].Color == L.C)
          {
            print(L.C);
          One.placement[i][j].isvoid = true;
          if (!hasBeenPopped)
         { One.popBall(One.placement[i][j]);
         hasBeenPopped = true;
         }
         }
        // One.placement[i][j].isvoid = true;
          
        }
        if (L.position[0] >= 800 || L.position[0] <= 0)
        {
          newBallNeeded = true;
          
        }
        if (L.position[1] >= 800 || L.position[1] <= 0)
        {
          newBallNeeded = true;
         
        }
        
      }
    }
   // if (fff)
    L.moveBall(T.ending_position);
      //   T.getRidOfBalls(One);
    }
    
    
  }
  
}
