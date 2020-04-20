int i;
Bubble[] bubbles = new Bubble[200];

int total = 0;

void setup() {
  size(1000, 800, P2D);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(100);
  }
}

void mousePressed(){
  total = total + 5;
  bubbles[i].kolor();
}

void keyPressed(){
  total = total - 5;
}

void draw() {
  background(0);
  for (int i = 0; i <total; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}

 
