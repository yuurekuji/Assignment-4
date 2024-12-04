class Blood{
  // this is the class for the actual particle effects;
  // we need a positon a velocity and a acceleration so that they actuall fall to the ground;
  PVector position;
  PVector velocity;
  PVector acceleration;
 
  Blood() {
    acceleration = new PVector(0, 0.05);
    acceleration.setMag(0.5);
    velocity = new PVector(random(-1,1), random(-1, 1) ); // we want it to be underneath arceus and move with arceus, thats why the values are all from arceus postion.
    position = new PVector(363, 268);
    
  }
  void update () { // this is to update the values each time so that the draws dont look the same
    velocity.add(acceleration);
    position.add(velocity);
    
  }
  void display() { // this is just what the particles look like
    noStroke();
    fill(255, 0, 0);
    rect(position.x, position.y, 2, 2);
  }
}
