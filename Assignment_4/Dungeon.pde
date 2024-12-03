class Dungeon {
  PImage Gate; // PImage of the gate
  PImage rooms [];
  PVector gatePos; // position pvector of the gate 
  PVector pos; //position for the dungeon screens
  
  Dungeon() {

    gatePos = new PVector (width/2, height/5); // position declaration of the gate
    Gate = loadImage("dungeon0Gate.png"); // PImage initialization of the gate
    rooms = new PImage[6]; // set the array for the PImages for the dungeon rooms
    
  }
  void display0() {
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
