PImage[] zdjecia = new PImage[3];
int i;
Bubble[] bubbles = new Bubble[50];


void setup() {
  size(1000, 800, P2D);
  for (int i = 0; i < zdjecia.length; i++) {  
    zdjecia[i] = loadImage("zdj" + i + ".png");
  }
  for (int i = 0; i < bubbles.length; i++) {
    int index = int(random(0, zdjecia.length));
    bubbles[i] = new Bubble(zdjecia[index], random(100,300));
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
