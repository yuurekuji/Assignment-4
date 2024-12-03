// music links
// https://www.youtube.com/watch?v=cLX0cyh6_Ro&list=PLwJjxqYuirCLkq42mGw4XKGQlpZSfxsYd&index=18
// https://www.youtube.com/watch?v=Ddrs6FXIJ-g&list=PLwJjxqYuirCLkq42mGw4XKGQlpZSfxsYd&index=18
// https://www.youtube.com/watch?v=3zt40gdtW1M

import processing.sound.*;
SoundFile song1;
SoundFile song2;
SoundFile song3;

boolean goUp = false; // very basic forms of movement for players, each booleans check for if a key is pressed, and when the key is pressed the boolean will be turned to true later which will cause the actual movement.
boolean goDown = false;
boolean goLeft = false;
boolean goRight = false;
boolean sprint = false;// this boolean is a conditional to augment the speed which the player can move when they press a certain key while moving, it is set to false right now to ensure that the players speed is normal and only when pressing the key will the player be able to "sprint"
boolean isMenuOpen = false; // this is a boolean to check if the menu is open or closed. it will switch on and off depending on where it is in the game
boolean isDropMenuOpen = false; // this is a boolean to check if the dropmenu is open or closed. it will switch on and off depending on where it is in the game

Player player; // intialization of the player class which holds the sprites of the player
TitleScreen titlescreen; //initialization of the titlescreen class which holds everything in the title screen
Menu menu; //intializes the menu class when you click escape
BattleUI battleui; // initializes the battle ui class when you enter the battle
GameOver gameover; // initializes the game over class
Controls controlmenu;
NPC1 npc1; // holds the npc1 class
NPC2 npc2; // holds the npc 2 class
StartText starttext; // holds all of the starting text in the game
Dungeon dungeon;
Buttons titlebuttons; // holds the buttons class
Buttons music;
Buttons play;
Buttons controls;
Buttons exit;


Buttons Dropcontrols; // these are the buttons in the drop down menu when you click tab
Buttons Dropexit;
Buttons DropMainMenu;


int [] master = new int [1]; // this is the initialization of the master array
int [] titlemusic = new int [1]; // this is the initialization of the music array
int [] startText = new int [1]; // this is the initialization of the starting text boxes
int [] dungeonRooms = new int [1]; // this intializaes the

void setup() {
  size(900, 600);
  imageMode(CENTER);
  ///////////////////////////
  ///// import sound  ///////
  ///////////////////////////

  song1 = new SoundFile(this, "Song title 1.wav"); // importing the songs used for the games title screen
  song2 = new SoundFile(this, "Song title 2.wav");
  song3 = new SoundFile(this, "Song title 3.wav");

  ///////////////////////////////////////////////////////////////
  /////////////// initalize all of the classes //////////////////
  ///////////////////////////////////////////////////////////////

  player = new Player();
  titlescreen = new TitleScreen();
  menu = new Menu();
  battleui = new BattleUI();
  gameover = new GameOver();
  controlmenu = new Controls();
  npc1 = new NPC1();
  npc2 = new NPC2();

  music = new Buttons (816, 514, 50, 50); //These are the "fake" buttons which exist but are hidden from the player, they use the Pos and Size0
  controls = new Buttons (158, 501, 120, 20);
  play = new Buttons (127, 462, 60, 20);
  exit = new Buttons (127, 535, 60, 20);

  DropMainMenu = new Buttons (460, 120, 240, 50);
  Dropcontrols = new Buttons (460, 225, 240, 50);
  Dropexit = new Buttons (460, 315, 240, 50);

  starttext = new StartText ();
  dungeon = new Dungeon();



  restartGame(); // call the restartGame fuction at the start to begin the game and the array indexs
}

void restartGame() { // this is where all of the intialization of the arrays and the variables will be located, by calling this function it theoretically will reset all of the values to a point where you can play the game again.
  master[0] = 1;
  titlemusic[0] = 1;
  startText [0] = -1;
  dungeonRooms [0] = 0;
}

void draw() {
  background(230); // this is to set the background as white

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////   Different conditionals for each state of the game ///////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (master[0] == 1) {
    titlescreen.display(); // display all of the items that must be shown and function in the title screen
    music.buttons();
    controls.buttons();
    play.buttons();
    exit.buttons();

    if (titlemusic [0] == 1 && !song1.isPlaying()) { // if the index of master at 0  is equal to 1 call the function for the title screen, the && !song1.isPlaying() is to make sure that when the song is playing it does not play again in the next frame causing errors and sound issues.

      song1.play();
      song2.stop();
      song3.stop();
    }
    if (titlemusic [0] == 2 && !song2.isPlaying() ) { // if the index of tilemusic at 0  is equal to 2 call the function for the title screen, the && !song2.isPlaying() is to make sure that when the song is playing it does not play again in the next frame causing errors and sound issues.

      song2.play();
      song1.stop();
      song3.stop();
    }
    if (titlemusic [0] == 3 && !song3.isPlaying()) { // if the index of titlemusic at 0  is equal to 3 call the function for the title screen, the && !song3.isPlaying() is to make sure that when the song is playing it does not play again in the next frame causing errors and sound issues.

      song3.play();
      song1.stop();
      song2.stop();
    }
  }
  if (master [0] == 2 && isDropMenuOpen == false) { // this checks if the master array is at 2 and if the drop menu is closed, if it is then the code may proceed, this ensures that if the menu is open, the player will not move around if they press buttons and only after exiting will they move
    player.display(); // this displays the character without any movement
    song1.stop(); //these .stops stop the music when entering the new phase so that it does not over lap with the music for the dungeon.
    song2.stop();
    song3.stop();


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
    //add the starting text which appears in text boxes this should be only activated while inside the conditional that the master [0] == 2;
    if (startText[0] == 1) { // this is a if statement checking the value of the index
      starttext.display1(); // this function call displays the text box when the check goes through
    }
    if (startText[0] ==2) {// this is a if statement checking the value of the index
      starttext.display2();// this function call displays the text box when the check goes through
    }
    if (startText[0] ==3) {// this is a if statement checking the value of the index
      starttext.display3();// this function call displays the text box when the check goes through
    }
    if (startText[0] ==4) {// this is a if statement checking the value of the index
      starttext.display4();// this function call displays the text box when the check goes through
    }
    if (startText[0] ==5) {// this is a if statement checking the value of the index
      starttext.display5();// this function call displays the text box when the check goes through
    }
  }

  if (isDropMenuOpen == true && master[0] == 2) { // this if statements checks if the drop menu boolean is true and the game state is in the master array 2 then will execute, ensures that players do not open menu during combat and other areas
    menu.display();
    Dropexit.buttons();
    Dropcontrols.buttons();
    DropMainMenu.buttons();
  }
  if (isMenuOpen == true) { // the if statement checks if the isMenuOpen boolean is true and then runs based off of that.
    controlmenu.display(); // this displays the menu
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
  if (key == TAB && isMenuOpen == true) { // this checks if the key tab is clicked and if the boolean is true
    isMenuOpen = false; // this turns the isMenuOpen Boolean to false to close the tab
  }
  if (key == TAB && master[0] == 2) {// this checks if the key tab is clicked and if the boolean is true
    isDropMenuOpen = !isDropMenuOpen;// this turns the isDropMenuOpen Boolean to the opposite to close or open the tab
  }
}

void mousePressed() { // this houses all of the button presses which will prompt the game into going into a different state. Since mouse pressed stays forever unlike key pressed this is the best way of creating buttons.
  if (master[0] == 1 && play.isMouseOver() == true) { // This is a if statement to check if the mouse is over the play button, if it is then when mouse is pressed move the index value by 1 which then shifts game state into the main game
    master[0] = 2;
  }
  if (master [0] == 1 && exit.isMouseOver() == true) { //this is a if statement to check if the mouse is over the exit button, if it is then when mouse is pressed execute the exit() function which closes the game.
    exit();
  }
  if (master [0] == 1 && controls.isMouseOver() == true) { // this is a if statement checking if the master array is in the menu and if the mouse is over the controls button. if it is then run execute and turn the isMenuOpen boolean to true to turn on the menu.
    isMenuOpen = true;
  }
  if (master[0] == 1 && music.isMouseOver() == true) { // this is to check if the mouse is over the music button
    titlemusic[0] +=1; // this shifts the array that effects that music, by +1 each time.
    if (titlemusic[0] > 3) { // this is a if statement that checks if the music array is over 3 which is the set ammount
      titlemusic[0] = 1; // if statement triggers by seeing that it is over 3 it will hard push the index value back down to 1;
    }
  }
  if (master [0] == 2 && isDropMenuOpen == true && DropMainMenu.isMouseOver() == true) { //this is the if statement to check the master array and if the drop menu is true, then if the mouse is over the button execute what is inside the if statment
    master [0] = 1; // this sets the master array back to the main menu
    isDropMenuOpen = false; // this changes the boolean for the drop menu to be false so that when the player clicks play again the drop menu is not still open.
  }
  if (master [0] == 2 && isDropMenuOpen == true && Dropcontrols.isMouseOver() == true) { //this is the if statement to check the master array and if the drop menu is true, then if the mouse is over the button execute what is inside the if statment
    isMenuOpen = !isMenuOpen;
    isDropMenuOpen = false; // close the menu behind so that when you click on tab it does not clear both
  }
  if (master [0] == 2 && isDropMenuOpen == true && Dropexit.isMouseOver() == true) { // this is the if statement to check the master array and if the drop menu is true, then if the mouse is over the button execute what is inside the if statment
    exit(); //this exits out of the game.
  }

  if (master [0] == 2 && isDropMenuOpen == false && isMenuOpen == false) { // this is a if statement checking if the actual game is running, and then if the menus are off. 
    startText[0] += 1;// sets the starting text [0] to +=1 each time pressed to intialize and continue starting text function
  }

}
