int i;
Bubble[] bubbles = new Bubble[50];


void setup() {
  size(1000, 800, P2D);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(i*4);
  }
}

void draw() {
  background(0);
  for (int i = 0; i <bubbles.length; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}

 
