


void setup(){
  size(800, 800);
    Interface newOne = new Interface(20, 2);
    BoardBalls One = new BoardBalls(15);
  
}

void draw(){
  Interface newOne = new Interface(20, 2);
  newOne.setInterface();
  BoardBalls One = new BoardBalls(15);
  One.drawBoard();
}
