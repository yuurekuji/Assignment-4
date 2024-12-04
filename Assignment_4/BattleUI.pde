class BattleUI {
  float playerhp;
  float bosshp;
  PImage bossStage;
  PImage bossfight;
  PVector pos;
  
  BattleUI() {
    playerhp = 100;
    bosshp = 400;
  pos = new PVector (width/2, height/2);  
    bossStage = loadImage ("bossStage.png");
  }
  void display1() { // thisplays the boss fight screen
  
    image(bossStage, pos.x, pos.y);
  }
}
