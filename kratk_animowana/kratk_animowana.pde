float endX = 0;

void setup() {
size(1024,720);

}

void draw() {
  background(0);
  strokeWeight(2);
  stroke(255);

int x = 0; 
while (x < endX){
  line(x,0,x,height);
  stroke(random(255),random(255),random(255));
  x = x + 30;
  delay(10);
  }
 
 endX= endX + 1;

}
