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
  
}
