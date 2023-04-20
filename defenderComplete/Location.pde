public class Location
{
  private int x;
  private int y;

  public Location(int x, int y)
  {
    this.x=x;
    this.y=y;
  } 

  public int getX()
  {
    return x;
  }

  public int getY()
  {
    return y;
  }

  public void setX(int x) {    
    this.x=x;
  }

  public void setY(int y) {    
    this.y=y;
  }

  public void incX(int x) {
    this.x+=x;
  }

  public void incY(int y) {
    this.y+=y;
  }
  
  public String toString(){
    return "[Location:x="+x+", y="+y+"]";
  }
 
  
}
