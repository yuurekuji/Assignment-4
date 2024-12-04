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

    rectMode(CORNER);
    //Boss HP
    noStroke();
    fill(255, 0, 0);
    rect(50, 50, bosshp*2, 30);
    noFill();
    strokeWeight(4);
    stroke(0);
    rect(50, 50, 800, 30);

    //player HP
    noStroke();
    fill(255, 0, 0);
    rect(600, 450, playerhp*2.5, 20);
    noFill();
    strokeWeight(4);
    stroke(0);
    rect(600, 450, 250, 20);
  }
}
