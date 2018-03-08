int topY = 100;
int bottomY = 700;
int speed1 = -2;
int speed2 = 4;
int speed3 = -4;
int ballY1 = 600;
int ballY2 = 200;
int ballY3 = 400;
void setup() {
  size(500, 800);
  fill(0, 0, 0);
  strokeWeight(10);
  stroke(0, 255, 253);
  background(0, 0, 0);
}

void draw() {
  background(0, 0, 0);
  line(50, topY, 450, topY);
  line(50, bottomY, 450, bottomY);
  //ball1
  speed1 = moveBall(250, ballY1, speed1);
  ballY1 += speed1;

  //ball2
  speed2 = moveBall(100, ballY2, speed2);
  ballY2 += speed2; 

  //ball3
  speed3 = moveBall(400, ballY3, speed3);
  ballY3 += speed3;
}

int moveBall(int ballX, int ballY, int speed) {
  ellipse(ballX, ballY, 20, 20);

  if (dist(ballX, bottomY, ballX, ballY)<20) {
    speed = -speed;
  }
  if (dist(ballX, topY, ballX, ballY)<20) {
    speed = -speed;
  }

  return speed;
}