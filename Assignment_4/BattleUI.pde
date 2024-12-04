class BattleUI {

  PImage bossStage;
  PImage bossfight;
  PVector pos;

  float playerA;
  float bossA;

  int [] enemyDMG = new int [4]; // enemy dmg array which holds all of the moves
  int [] playerDMG = new int [4]; // player dmg array which holds all of the moves

  float enemyMove;
  float playerMove;

  BattleUI() {

    pos = new PVector (width/2, height/2);
    bossStage = loadImage ("bossStage.png");

    playerA = 255;
    bossA = 255;

    enemyDMG [0] = 55;
    enemyDMG [1] = 100;
    enemyDMG [2] = 20;
    enemyDMG [3] = 50;
  }
  void display1() { // thisplays the boss fight screen

    image(bossStage, pos.x, pos.y);

    rectMode(CORNER);
    //Boss HP
    noStroke();
    fill(255, 0, 0, bossA);
    rect(50, 50, bosshp*2, 30);
    noFill();
    strokeWeight(4);
    stroke(0);
    rect(50, 50, 800, 30);

    //player HP
    noStroke();
    fill(255, 0, 0, playerA);
    rect(600, 450, playerhp*2.5, 20);
    noFill();
    strokeWeight(4);
    stroke(0);
    rect(600, 450, 250, 20);
  }

  void Battle() {

  }
}
