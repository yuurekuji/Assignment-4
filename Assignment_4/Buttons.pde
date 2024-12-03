class Buttons {
  PVector pos;
  PVector size;

  Buttons (int x, int y, int w, int h) {  // this is to make the buttons, however I will make each button invisible in the screens as the PImage already has the aesthetics already
    pos = new PVector (x, y); // pos is used as the posiiton of the button
    size = new PVector (w, h); // size is the size of the hidden button
  }
  void buttons() { // this is the function to draw the buttons, the rect uses both pos and size in order to have dynamic buttons
    rectMode(CENTER);
    noStroke();
    fill(255, 255, 255, 0);
    rect(pos.x, pos.y, size.x, size.y);
  }
  boolean isMouseOver() { // this is a boolean function which is called in if statements in the main code to check if the mouses position is over the button. If it is ture then this boolean will be changed accordingly in the conditionals
    return (mouseX > pos.x -  size.x /2 && mouseX < pos.x + size.x/2 && mouseY > pos.y -  size.y /2 && mouseY < pos.y + size.y/2); // this is to check if the mouse is over the buttons using the size and pos variables I declared since each is specifically mapped to a location
  }
}
