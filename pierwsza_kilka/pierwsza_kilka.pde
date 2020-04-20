float circleX;
float xspeed = 3; 
boolean going = false;


void setup() {
  size(1024, 840);
  circleX = 50;
}

void draw() {
  background(50);
  noStroke();
  ellipse( circleX, height/2, 100, 100);
  circleX = circleX + xspeed;
   
  if ((circleX > 974 ) || (circleX < 50)) {
    fill(random(255), random(255),random(255),random(255));
    xspeed = xspeed *-1;
  }
  
}
void mousePressed() {
going = !going;
}
