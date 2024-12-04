class Dungeon {
  PImage Gate; // PImage of the gate
  PImage rooms []; // PImage array of the rooms
  PImage popup; // PImage of the proceed popup

  PImage bossTexts[];



  PVector gatePos; // position pvector of the gate
  PVector pos; //position for the dungeon screens
  boolean isPopupOpen;

  Dungeon() {

    gatePos = new PVector (width/2, height/5); // position declaration of the gate
    pos = new PVector (width/2, height/2);
    Gate = loadImage("dungeon0Gate.png"); // PImage initialization of the gate

    popup = loadImage("ProceedPopup.png");

    rooms = new PImage[6]; // set the array for the PImages for the dungeon rooms

    rooms [0] = loadImage("dungeon0.png");
    isPopupOpen = false;

    bossTexts = new PImage[3]; // this initializes and creates the array to store the different text boxes

    bossTexts[0] = loadImage("bosstext1.png");
    bossTexts[1] = loadImage("bosstext2.png");
    bossTexts[2] = loadImage("bosstext3.png");
    
  }
  void display0() {
    image(rooms[0], pos.x, pos.y); // displays the room at dungeon 0
    image(Gate, gatePos.x, gatePos.y); // displays the gate at dungeon 0


    if (dist(player.position.x, player.position.y, gatePos.x, gatePos.y) < 60 ) { // this is a if statement to check if the player in on the gates platform, if they are then proceed to show the popup.
      isPopupOpen = true;
      if (isPopupOpen == true) { // this is a if statement to check if the boolean is true
        image(popup, pos.x +30, pos.y -40);
      }
    }
  }

  void text1() {
    image(bossTexts[0], pos.x, pos.y);
  }
  void text2() {
    image(bossTexts[1], pos.x, pos.y);
  }
  void text3() {
    image(bossTexts[2], pos.x, pos.y);
  }
}
