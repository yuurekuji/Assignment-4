class TitleButtons {
  PVector pos;
  PVector size;

  TitleButtons (int x, int y, int w, int h) {  // this is to make the buttons, however I will make each button invisible in the title screen as the PImage already has the aesthetics
    pos = new PVector (x, y); // pos is used as the posiiton of the button
    size = new PVector (w, h);
  }
  void buttons() { // this is the function to draw the buttons, the rect uses both pos and size in order to have dynamic buttons
    rectMode(CENTER);
    noStroke();
    fill(255, 255, 255, 0);
    rect(pos.x, pos.y, size.x, size.y);
  }
  boolean isMouseOver() {
    return (mouseX > pos.x -  size.x /2 && mouseX < pos.x + size.x/2 && mouseY > pos.y -  size.y /2 && mouseY < pos.y + size.y/2); // this is to check if the mouse is over the buttons using the size and pos variables I declared since each is specifically mapped to a location
  }
}
