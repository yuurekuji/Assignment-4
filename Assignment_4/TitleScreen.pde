class TitleScreen {
PImage Screen;

  TitleScreen() {
    Screen = loadImage("Title Screen.png"); // this loads the title screen image I created
    
  }

  void display() { // this is the function that will be called when the game begins to display the screen
    
    image(Screen, width/2,height/2); // this is the title screen itself
  }
}
