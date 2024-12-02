boolean goUp = false; // very basic forms of movement for players, each booleans check for if a key is pressed, and when the key is pressed the boolean will be turned to true later which will cause the actual movement.
boolean goDown = false; 
boolean goLeft = false;
boolean goRight = false;
boolean sprint = false; // this boolean is a conditional to augment the speed which the player can move when they press a certain key while moving, it is set to false right now to ensure that the players speed is normal and only when pressing the key will the player be able to "sprint"

Player player;

int [] master = new int [5]; // this is the initilaization of the master array 

void setup(){
  size(900,600);
  imageMode(CENTER);
  player = new Player();
}

void draw(){
  background(255); // this is to set the background as white 
  player.display(); // this displays the character without any movement
  if (goUp == true){
   player.displayUp();
    
  }
  if (goDown == true){
   player.displayDown();
    
  }
  if (goLeft == true){
   player.displayLeft();
    
  }
  if (goRight == true){
   player.displayRight();
    
  }
 
}

void keyPressed(){ // the void keypressed holds all of the movement code and code which will shift the master array from [1] (actual gameplauy)  to [4] (menu)  
 if(key == 'w'){
    goUp = true;
  }
    if(key == 's'){
    goDown = true;
  }
    if(key == 'a'){
    goLeft = true;
  }
    if(key == 'd'){
    goRight = true;
  }
}
  void keyReleased(){ // the void keypressed holds all of the movement code and code which will shift the master array from [1] (actual gameplauy)  to [4] (menu)  
 if(key == 'w'){
    goUp = false;
  }
    if(key == 's'){
    goDown = false;
  }
    if(key == 'a'){
    goLeft = false;
  }
    if(key == 'd'){
    goRight = false;
  }
}
