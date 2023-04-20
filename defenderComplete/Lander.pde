public class Lander extends Alien
{
  private int direction;
  
  public Lander(int number, Location location)
  {
    super(number);
    super.location = location;    
    super.speed=2.0;
    this.direction=1;
  }
  
  public Location getLocation()
  {
    return super.location;
  }
 
  public float getSpeed()
  {
    return super.speed;
  }
  
  public int getDirection()
  {
    return this.direction;
  }
  
  private void updateY()
  {
    getLocation().setY(getLocation().getY()+(direction*(int)super.speed));
  }
  
  //public boolean intersect(Projectile projectile)
  //{
  //  if (dist(projectile.getLocation().getX()+30,projectile.getLocation().getY(), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE/2)   
  //    return true;
  //  else
  //    return false;
  //}

  public String toString(){
    return "[Lander:number="+super.getNumber()+" ,location=[Location:x="+super.location.getX()+", y="+super.location.getY()+"], speed="+super.speed+", direction="+direction+"]";
  }
  
  
  
  //
  // Add your code ABOVE this method
  //  
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    
    fill(Game.LANDER_COLOUR);
    stroke(153);
    
    pushMatrix();
    updateY();
    translate(getLocation().getX(), getLocation().getY());
    
    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                              rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
    rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
    fill(255);
    textSize(15);
    text(super.getNumber(),Game.BLOCK_SIZE*1,20);
       
    // Part 1 - display the lander number here
    
    
    
    popMatrix();
  }

}
