public class InvalidDefenderLocationException extends Exception
{
  public InvalidDefenderLocationException(Location location){
    super("InvalidDefenderLocationException:{Invalid defender location:[Location:x=" + location.getX() + ", y=" + location.getY() + "]}");
  }
}
