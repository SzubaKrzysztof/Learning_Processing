float x = 100;
float y = 150;
float xspeed = 15; 
float yspeed = 13;
boolean going = false;


void setup() {
  size(1024, 840);

}

void draw() {
  background(50);
  stroke(255);
  ellipse( x , y, 100, 100);
  
  x = x + xspeed;
  y = y + yspeed;
  
   
  if (x > 974  || x < 50) {
    fill(random(255), random(255),random(255),random(255));
    xspeed = xspeed *-1;
    
  }
  if (y > 790  || y < 50) {
    fill(random(255), random(255),random(255),random(255));
    yspeed = yspeed *-1;
    
  }
  
}
void mousePressed() {
going = !going;
}
