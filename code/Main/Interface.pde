class Interface{
  color background = color(255, 192, 203);
  color boarder;
  int boarderThickness;
  
  Interface(int x, int boarder){
  this.boarderThickness = x;
  if (boarder == 1)
  {
    this.boarder = color(216, 191, 216);
  }
  else if (boarder == 2)
  {
    this.boarder = color(173, 216, 230);
  }
  else if (boarder == 3)
  {
    this.boarder = color(138, 154, 91);
  }
   else
   this.boarder = color(255, 245, 238);
  }

public void setInterface(){
  fill(background);
  rect(0, 0, width, height);
  fill(boarder);

  
}

//public boolean ScanForEnd(BoardBalls One){
//  boolean anyBallsLeft = false;;
   
//        for (int i = 0; i < One.placement.length; i++)
//    {
//      for (int j = 0; j < One.placement[0].length; j++)
//      {
//        if (One.placement[i][j].isvoid != true)
//        {
//          anyBallsLeft = true;
//        }
//      }
      
//    }
//  if (!anyBallsLeft)
//  {
    
//   loadImage("you_won.jpg");
  
//  }
//  return anyBallsLeft;
//}
  
}
