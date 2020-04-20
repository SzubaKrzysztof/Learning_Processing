// Demonstration of the basics of motion with vector.
// A "Mover" object stores position, velocity, and acceleration as vectors
// The motion is controlled by affecting the acceleration (in this case towards the mouse)

Mover[] movers = new Mover[30];

void setup() {
  size(940,860);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(i*3); 
  }
}

void draw() {
  
  background(255);

  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].display(); 
  }
}
