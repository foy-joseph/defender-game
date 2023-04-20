public class Defender extends SpaceObject
{
  private Projectile projectile;
  
  public Defender(Location location) throws InvalidDefenderLocationException
  {
    super.location = location;
    if(location.getX() > width || location.getY() > height || location.getX() < 0 || location.getY() < 0){
      throw new InvalidDefenderLocationException(location);
    }
    
    //try{
    //  if(location.getX() > width || location.getY() > height || location.getX() < 0 || location.getY() < 0){
    //    super.location = location;
    //  }
    //}
    //catch(InvalidDefenderLocationException e){
    //  println(e.getMessage());
    //}
    
    this.projectile=null;
  }
  
  void incY(int direction) 
  {
    getLocation().incY(direction);
  }
  
  void incX(int direction) 
  {
    getLocation().incX(direction);
  }
  
  public void reloadProjectile()
  {
    projectile=null;
  }

  public Projectile getProjectile()
  {
    return projectile;
  }

  public void fire()
  {
    projectile = new Projectile(getLocation().getY());
  }

  public String toString(){
    return "[Defender:location=[Location:x="+location.getX()+", y="+location.getY()+"], projectile=[Projectile:x="+projectile.getLocation().getX()+", y="+projectile.getLocation().getY()+"]]";
  }

  //
  // Add your code ABOVE this method
  //  
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.DEFENDER_COLOUR);
    stroke(153);

    pushMatrix();   
    translate(getLocation().getX(), getLocation().getY());
    
    rect( 0, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                rect(Game.BLOCK_SIZE*1, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect( 0, 10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect( 0, 20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*1,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
    
    popMatrix();
  }
}
