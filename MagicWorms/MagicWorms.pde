float x = 10;
float y = 10;
void setup() {
  size(500, 500);
  background(#000000);
}

void draw() {
  makeMagical();
  for (int e = 0; e < 20; e++) {
    int randX =(int) random(490);
    int randY = (int) random(490);
    int Mycolor = e % 4;
    //fill((int) random(256), (int) random(256), (int) random(256));
    //fill(e, 200, frameCount);

    if (Mycolor == 0) {
      fill(#262E81);
    }
    
    else if(Mycolor == 1 ){
      fill(#00F9FF);
    }
    
    else if(Mycolor == 2 ){
      fill(#0070FF);
    }
    
    else if(Mycolor == 3 ){
      fill(#00FFC1);
    }
    
    float x = getWormX(e);
    float y = getWormY(e);
    ellipse(x, y, 20, 20);
  }
}

float frequency = .01;
float noiseInterval = PI;

void makeMagical() {
  fill( 0, 0, 0, 10 );
  rect(0, 0, width, height);
  noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
