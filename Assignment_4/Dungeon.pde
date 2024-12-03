class Dungeon {
  PImage Gate; // PImage of the gate
  PImage rooms [];
  PVector gatePos; // position pvector of the gate 
  PVector pos; //position for the dungeon screens
  
  Dungeon() {

    gatePos = new PVector (width/2, height/5); // position declaration of the gate
    pos = new PVector (width/2, height/2);
    Gate = loadImage("dungeon0Gate.png"); // PImage initialization of the gate
    rooms = new PImage[6]; // set the array for the PImages for the dungeon rooms
    
    rooms [0] = loadImage("dungeon0.png");
    
  }
  void display0() {
    image(rooms[0], pos.x, pos.y);
    image(Gate, gatePos.x, gatePos.y);
  }
  void display1() {
  }
  void display2() {
  }
  void display3() {
  }
  void display4() {
  }
  void display5() {
  }
}
