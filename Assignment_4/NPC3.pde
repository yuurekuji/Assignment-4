class NPC3 {


  PImage text[]; // the array which will store al the PImages for this NPC
  PVector pos;


  NPC3() {
    pos = new PVector (width/2, height/2);
    text = new PImage[4];

    text[0] = loadImage("Npc3text1.png");
    text[1] = loadImage("Npc3text2.png");
    text[2] = loadImage("Npc3text3.png");
    text[3] = loadImage("Npc3text4.png");
  }
  void display1() {
    image(text[0], pos.x, pos.y);
  }
  void display2() {
    image(text[1], pos.x, pos.y);
  }
  void display3() {
    image(text[2], pos.x, pos.y);
  }
  void display4() {
    image(text[3], pos.x, pos.y);
  }
}
