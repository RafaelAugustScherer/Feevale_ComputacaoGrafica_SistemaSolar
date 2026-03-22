class Planet {
  // Each planet object keeps track of its own angle of rotation.
  float theta;      // Rotation around sun
  float diameter;   // Size of planet
  float distance;   // Distance from sun
  float orbitspeed; // Orbit speed
  float[] planet_color; // Planet color array [R,G,B]
 
  // Each Planet now has Moons!
  Moon[] moons = new Moon[2];
  int number_of_moons;
 
  
  Planet(float distance_, float diameter_, int number_of_moons_) {
    distance = distance_;
    diameter = diameter_;
    number_of_moons = number_of_moons_; 
    theta = 0;
    orbitspeed = random(0.01,0.03);
    
    planet_color = new float[3];
    planet_color[0] = random(255);
    planet_color[1] = random(255);
    planet_color[2] = random(255);
    
    if (number_of_moons_ > 2) {
      throw new Error("Cannot have planets with more than 2 moons");
    }
    
    // create the Moon 24 pixels from the planet with a diameter of 5
    for (int i = 0; i < number_of_moons_; i++) {
      moons[i] = new Moon(24 + i*12, random(8,16));
    }
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
    // Update the moons
    for (int i = 0; i < moons.length; i++ ) {
      if (moons[i] != null) {
        moons[i].update();
      }
    }
  }
  
  void display() {
    // Before rotation and translation, the state of the matrix is saved with pushMatrix().
    pushMatrix(); 
    // Rotate orbit
    rotate(theta); 
    // translate out distance
    translate(distance,0); 
    stroke(0);
    fill(planet_color[0], planet_color[1], planet_color[2]);
    ellipse(0,0,diameter,diameter);
    // The planet is drawn, now draw the moons
    for (int i = 0; i < moons.length; i++ ) {
      if (moons[i] != null) {
        moons[i].display();
      }
    }
    
    // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
    popMatrix(); 
  }
}
