class BloodyParticles{
  //im initializing a new array list for some funny particles when arceus dies and flies off, i am using an array list to create a bunch of them and loop them without needing to hard code every object
 ArrayList<Blood> particles;
  BloodyParticles(){
    particles = new ArrayList<Blood>();
  }
  // this is to loop the amount of particles at 50 in the list, so that it doesnt look awkward.
  void logic(){
    for(int i =0; i<50; i++){
      particles.add(new Blood());
    }
  }
  void drawBlood(){ // using the condesned loop to draw everything in the arraylist
    for(Blood particles: particles){
      particles.update();
      particles.display();
    }
    
  }
  
}
