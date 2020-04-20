int x, y, cols, rows;
int scl = 20;
int w = 1900;
int h = 3600;
float flying;
float [][] terrain;// dwuwymiarowy array list

void setup() {
  size (600, 600, P3D);
  cols = w/scl;
  rows = h/scl;
}


void draw() {

  flying -= 0.05;
  float yoff = flying;
  terrain = new float [cols][rows];// array 
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -60, 80);//-60,80 to jest skala w jakiej mają być tworzone wybrzuszenia
      xoff += 0.1;
    }
    yoff += 0.1;
  }

  background(0);
  stroke(0,255,0);
  noFill();
  translate(width/2, height/2);// przesuwa na środek z lewego górnego rogu
  //cyfra odpowiada za rotację całego obiektu
  rotateX(PI/2.5);

  translate (- w /2, - h /2);// przesuwa na środek z lewego górnego rogu
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);//dzielimy kwadraty na trókąty
    for (int x = 0; x < cols; x++) {
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
      //rect(x*scl, y*scl, scl, scl);
    }
    endShape();// koniec dzielenia i kształtów
  }
}
