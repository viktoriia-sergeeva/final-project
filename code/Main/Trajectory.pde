class Trajectory{
  
 public int[] starting_position;
 public int[] ending_position = new int[2];
  
 public Trajectory()
 {
   int[] positionS = {400, 700};
   starting_position = positionS;
   ending_position[0] = 0;
   ending_position[1] = 0;
   
 }
 
 public void drawTrajectory()
 {
   
   this.ending_position[0] = mouseX;
   this.ending_position[1] = mouseY;
  // line(starting_position[0], starting_position[1], ending_position[0], ending_position[1]);
   
 }
  
  
  
  
  
}
