public class Baiter extends SpaceObject implements Blockable
{
  private int direction;

  public Baiter(Location location)
  {
    super.location = location;    
    super.speed=8.0;
    this.direction=-1;
  }
  
  public boolean blocksProjectile(Projectile projectile){
    if(this.intersect(projectile)){
      return true;
    }
    return false;
  }
  
  public boolean visible()
  {
    if (getLocation().getX()+((int)this.speed*1)<0)
      return false;
    else
      return true;
  }

  private void updateX()
  {
    location.setX(getLocation().getX()+(direction*(int)speed));
  }

  // overloaded intersect() methods
  public boolean intersect(Lander lander)
  {
    if (dist(lander.getLocation().getX()+(Game.CHARACTER_SIZE/2),lander.getLocation().getY()+(Game.CHARACTER_SIZE/2), location.getX()+(Game.CHARACTER_SIZE/2), location.getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  }
  public boolean intersect(Defender defender)
  {
    if (dist(defender.getLocation().getX()+(Game.CHARACTER_SIZE/2),defender.getLocation().getY()+(Game.CHARACTER_SIZE/2), location.getX()+(Game.CHARACTER_SIZE/2), location.getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  }  

  public String toString(){
    return "[Baiter:location=[location:x="+location.getX()+", y="+location.getY()+"], speed="+speed+", direction="+direction+"]";
  }

  //
  // Add your code ABOVE this method
  //
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.BAITER_COLOUR);
    stroke(153);

    pushMatrix();
    updateX();
    translate(getLocation().getX(), getLocation().getY());

    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);   rect(Game.BLOCK_SIZE*1, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(0,20,Game.BLOCK_SIZE*2,Game.BLOCK_SIZE);                rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 

    popMatrix();
  }
}
