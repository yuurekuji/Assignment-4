boolean goUp = false; // very basic forms of movement for players, each booleans check for if a key is pressed, and when the key is pressed the boolean will be turned to true later which will cause the actual movement.
boolean goDown = false; 
boolean goLeft = false;
boolean goRight = false;
boolean sprint = false; // this boolean is a conditional to augment the speed which the player can move when they press a certain key while moving, it is set to false right now to ensure that the players speed is normal and only when pressing the key will the player be able to "sprint"

Player player;

void setup(){
  size(900,600);
  imageMode(CENTER);
  
}
