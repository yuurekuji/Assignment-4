class Menu {
  PImage menu;
  Menu() {
    menu = loadImage("Menu.png"); // this loads the main menu PImage which I created
  }
  void display() { // this is the function to be called inside the main code to display the PImage of the menu
    image(menu, width/2, height/2); // this is the title screen itself
  }
}
