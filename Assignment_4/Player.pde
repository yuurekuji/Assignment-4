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

    position = new PVector (width/2, height/2); // this sets the initial position of the character which will be changed later
  }
  void display() {
    image(playerWalk[0], position.x, position.y); // this calls the idle sprite of the charcter inbedded into the array. 
  }
  void displayDown() {
    image(playerWalk[0], position.x, position.y); // this is apart of the movement code which calls the go down sprite of the character and shifts the Y value of the position p vector in a way so that the character goes up
    position.y +=1;
  }
  void displayUp() {
    image(playerWalk[1], position.x, position.y);// this is apart of the movement code which calls the go up sprite of the character and shifts the Y value of the position p vector in a way so that the character goes down
    position.y -=1;
  }
  void displayLeft() {
    image(playerWalk[2], position.x, position.y); // this is apart of the movement code which calls the go left sprite of the character and shifts the X value of the position p vector in a way so that the character goes left
    position.x -=1;
  }
  void displayRight() {
    image(playerWalk[3], position.x, position.y);// this is apart of the movement code which calls the go right sprite of the character and shifts the X value of the position p vector in a way so that the character goes right
    position.x +=1;
  }
}
