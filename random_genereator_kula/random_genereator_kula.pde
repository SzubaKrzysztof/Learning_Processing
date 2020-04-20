import java.util.Random;

Random generator;
void setup(){
  size (500,500);
  generator = new Random();
  
}

void draw(){
  background(255);
  
  float h = (float) generator.nextGaussian();
  h = h * 40;
  h = h +200;
  fill(random(255), random(255), random(255));
  ellipse(width/2, height/2, h,h);
}
