boolean goUp = false; // very basic forms of movement for players, each booleans check for if a key is pressed, and when the key is pressed the boolean will be turned to true later which will cause the actual movement.
boolean goDown = false;
boolean goLeft = false;
boolean goRight = false;
boolean sprint = false; // this boolean is a conditional to augment the speed which the player can move when they press a certain key while moving, it is set to false right now to ensure that the players speed is normal and only when pressing the key will the player be able to "sprint"

Player player; // intialization of the player class which holds the sprites of the player
TitleScreen titlescreen; //initialization of the titlescreen class which holds everything in the title screen
Menu menu; //intializes the menu class when you click escape
BattleUI battleui; // initializes the battle ui class when you enter the battle
GameOver gameover; // initializes the game over class
NPC1 npc1; // holds the npc1 class
NPC2 npc2; // holds the npc 2 class


int [] master = new int [1]; // this is the initilaization of the master array

void setup() {
  size(900, 600);
  imageMode(CENTER);
  ///////////////////////////////////////////////////////////////
  /////////////// initalize all of the classes //////////////////
  ///////////////////////////////////////////////////////////////

  player = new Player();
  titlescreen = new TitleScreen();
  menu = new Menu();
  battleui = new BattleUI();
  gameover = new GameOver();
  npc1 = new NPC1();
  npc2 = new NPC2();
}

void restartGame() {
  master[0] = 1;
}

void draw() {
  background(255); // this is to set the background as white

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////   Different conditionals for each state of the game ///////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (master[0] == 1) { // if the index of master at 0  is equal to 1 call the function for the title screen
    titlescreen.display();
  }
  if (master [0] == 2) {
    player.display(); // this displays the character without any movement

    if (goUp == true) { // the if statement checks if the boolean for going up is true, then will call the function for the movement which in in the player class.
      player.displayUp();
    }
    if (goDown == true) {// the if statement checks if the boolean for going down is true, then will call the function for the movement which in in the player class.
      player.displayDown();
    }
    if (goLeft == true) {// the if statement checks if the boolean for going left is true, then will call the function for the movement which in in the player class.
      player.displayLeft();
    }
    if (goRight == true) {// the if statement checks if the boolean for going right is true, then will call the function for the movement which in in the player class.
      player.displayRight();
    }
  }
}

void keyPressed() { // the void keypressed holds all of the movement code and code which will shift the master array from [1] (actual gameplauy)  to [4] (menu)
  if (key == 'w') { // the if statement checks the key being pressed and changes the boolean from false to true, this makes it so that the the player has smooth and constant movment movement
    goUp = true;
  }
  if (key == 's') {// the if statement checks the key being pressed and changes the boolean from false to true, this makes it so that the the player has smooth and constant movment movement
    goDown = true;
  }
  if (key == 'a') {// the if statement checks the key being pressed and changes the boolean from false to true, this makes it so that the the player has smooth and constant movment movement
    goLeft = true;
  }
  if (key == 'd') {// the if statement checks the key being pressed and changes the boolean from false to true, this makes it so that the the player has smooth and constant movment movement
    goRight = true;
  }
}
void keyReleased() { // the void keyReleased holds all of the negative of the movement code
  if (key == 'w') { //this does the opposite of the code above by instead of changing the boolean from false to true, when the key is released the boolean shifts from true back to false
    goUp = false;
  }
  if (key == 's') {//this does the opposite of the code above by instead of changing the boolean from false to true, when the key is released the boolean shifts from true back to false
    goDown = false;
  }
  if (key == 'a') {//this does the opposite of the code above by instead of changing the boolean from false to true, when the key is released the boolean shifts from true back to false
    goLeft = false;
  }
  if (key == 'd') {//this does the opposite of the code above by instead of changing the boolean from false to true, when the key is released the boolean shifts from true back to false
    goRight = false;
  }
}
