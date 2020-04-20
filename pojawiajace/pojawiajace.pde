float circleX;
float circleY;

void setup() {
  size(1024, 840);
  background(50);
}

void draw() {
  circleX = random(width);
  circleY = random(height);
  fill( random(255), random(255), random(255), random(255)); 
  
  ellipse( circleX, circleY, 155, 155);
}
