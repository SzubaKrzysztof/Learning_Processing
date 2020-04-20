float x; 
float y;
Walker w;

public void setup() {
  size(1000, 800);
  w = new Walker();
  background(0);
}



public void draw() {
  w.move();
  w.render();
  w.kolor();
}
