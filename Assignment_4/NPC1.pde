class NPC1 {

  PImage text[]; // the array which will store al the PImages for this NPC
  PVector pos;

  NPC1() {

    pos = new PVector (width/2, height/2);
    text = new PImage[3];

    text[0] = loadImage("Npc1text1.png");
    text[1] = loadImage("Npc1text2.png");
    text[2] = loadImage("Npc1text3.png");
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
}
