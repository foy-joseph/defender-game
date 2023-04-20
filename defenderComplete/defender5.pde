Game game;

void setup()
{
  size(800, 600);
  game = new Game();
  

  //ScreenData testing
  /*
  println();
  println("==ScreenData==");
  ScreenData screenData = new ScreenData();
  println(screenData);
  screenData.setScore(100);
  screenData.incScore(10);
  println("score="+screenData.getScore());
  screenData.setLives(3);
  screenData.addLife();
  screenData.addLife();
  screenData.loseLife();
  println("lives="+screenData.getLives());
  println(screenData);
  */


  //// SpaceObject testing
  /*
  println();
  println("==SpaceObject1==");
  SpaceObject spaceObject1 = new SpaceObject(new Location(100,100));
  println(spaceObject1);
  spaceObject1.setLocation(new Location(200,200));
  println(spaceObject1.getLocation());
  println();
  println("==SpaceObject2==");
  SpaceObject spaceObject2 = new SpaceObject(new Location(0,0), 2.0);
  println(spaceObject2);
  spaceObject2.setSpeed(spaceObject2.getSpeed()*2);  
  println(spaceObject2);
  */
}

void draw()
{
  background(0, 0, 0);
  game.update();
}



void keyPressed()
{
  if (key=='a')
    game.action(Game.UP);

  if (key=='z')
    game.action(Game.DOWN);

  if (key==' ')
    game.action(Game.FIRE);

  if (key=='q')
    exit();

  if (key=='h')
    game.help();
}
