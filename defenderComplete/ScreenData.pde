public class ScreenData
{
  private int score;
  private int lives;

  public ScreenData()
  {
    score=0;
    lives=Game.INITIAL_LIVES;
  }
  
  public int getScore(){
    return score;
  }
  
  public void setScore(int score){
    this.score=score;
  }
  
  public int getLives(){
    return lives;
  }
  
  public void setLives(int lives){
    this.lives=lives;
  }
  
  public void incScore(int score){
    this.score+=score;
  }
  
  public void addLife(){
    lives++;
  }
  
  public void loseLife(){
    lives--;
  }
  
  public String toString(){
    return "[ScreenData:score="+score+", lives="+lives+"]";
  }
  
  public void display()
  {
    textSize(28);
    fill(153);    
    // display lives and score
    textSize(32);
    text("Score: "+getScore(), 0, 30);
    text("Lives: "+getLives(), width-110, 30);
  }
}
