public abstract class Alien extends SpaceObject  
{
  private int number;
  private Location location; 
  private float speed;   
  
  public Alien()
  {
  }
  
  public Alien(int number)
  {
    this.number=number;
  }

  public int getNumber()
  {
    return number;
  }
  
  public boolean visible()
  {    
    if (getLocation().getY()>height)
      return false;
    else
      return true;
  }
  
  
  
  //
  // Add your code ABOVE this method
  //
  public abstract void display(); // this display is NOT used (yet)
  //{
    /*
    fill(Game.ALIEN_COLOUR_WHITE);
    stroke(153);

    pushMatrix();
    translate(0,0);
    
    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*1,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); rect(Game.BLOCK_SIZE*1,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
    
    popMatrix();
    */
  //}  
}
