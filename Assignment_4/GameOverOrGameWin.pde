class GameOver {
  
  PImage gamewin;
  PImage gamelose;
  
  GameOver() {
    
    gamewin = loadImage("you win screen.png");
    gamelose = loadImage("you lose screen.png");
  }
  void gameover() {
    image(gamelose, width/2, height/2);
    
  }
  void gamewin() {
     image(gamewin, width/2, height/2);
  }
}
