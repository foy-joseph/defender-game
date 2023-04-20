public abstract class SpaceObject
{
  Location location;
  float speed;
  
    public SpaceObject(Location location, float speed){//, int direction){
      this.location = location;
      this.speed = speed;
    }
    
    public SpaceObject(){
      this.location = new Location(0,0);
      this.speed = 1.0;
    }
    
    public SpaceObject(Location location){
      this.location = location;
      this.speed = 1.0;
    }
    
    public Location getLocation(){
      return this.location;
    }
    
    public void setLocation(Location location){
      this.location = location;
    }
    
    public float getSpeed(){
      return this.speed;
    }
    
    public void setSpeed(float speed){
      this.speed = speed;
    }
    
    public boolean intersect(Projectile projectile)
    {
      if (dist(projectile.getLocation().getX()+30,projectile.getLocation().getY(), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE/2)   
        return true;
      else
        return false;
    }
    
    public boolean intersect(Alien alien)
    {
      if (dist(alien.getLocation().getX()+(Game.CHARACTER_SIZE/2),alien.getLocation().getY()+(Game.CHARACTER_SIZE/2), location.getX()+(Game.CHARACTER_SIZE/2), location.getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
        return true;
      else
        return false;
    }
    
    public abstract void display();
    
    public String toString(){
      return "[SpaceObject:location=[Location:x=" + this.location.getX() + ", y=" + this.location.getY() + "], speed=" + this.speed + "]";
    }
    


}
