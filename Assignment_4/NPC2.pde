class NPC2 {

  PImage text[]; // the array which will store al the PImages for this NPC
  PVector pos;

  NPC2() {
    pos = new PVector (width/2, height/2);
    text = new PImage[2];

    text[0] = loadImage("Npc2text1.png");
    text[1] = loadImage("Npc2text2.png");
  }
  void display1() {
    image(text[0], pos.x, pos.y);
  }
  void display2() {
    image(text[1], pos.x, pos.y);
  }
}
