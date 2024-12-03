class Menu {
PImage dropmenu;
  Menu () {
    dropmenu = loadImage("drop menu.png");
  }
  void display() {
    image(dropmenu, width/2, height/2);
  }
}
