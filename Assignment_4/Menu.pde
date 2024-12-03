class Menu {
PImage dropmenu;
  Menu () {
    dropmenu = loadImage("drop menu.png"); // this loads the drop menu
  }
  void display() {
    image(dropmenu, width/2, height/2); // this displays the drop menu
  }
}
