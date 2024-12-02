class Player {
  PVector position; // this is the base postion of the player which will be augmented with the movement code
  float speed = 1; // this is the variable which will change depending on sprinting or not, if it is not sprinting then this is the base speed at which the player will move.
  PImage Player; //this is to initilaize the players PImage sprite that will be used
  PImage playerWalk[]; // this is the array that will hold all of the PImage sprites for the player movement

  Player() {
    position = new PVector (width/2, height/2);
    playerWalk = new PImage [4]; // this sets it so that the there are 4 different sprites that will be used
    playerWalk[0] = loadImage("Character Sprite.png");
    playerWalk[1] = loadImage("Character Sprite Back.png");
    playerWalk[2] = loadImage("Character Sprite Left.png");
    playerWalk[3] = loadImage("Character Sprite Right.png");
  }
}
