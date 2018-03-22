 PImage Corgi;
 PImage tail;
 int tailX= 128;
 int tailY = 279; 
 int done = 0;
void setup(){
 Corgi = loadImage("Corgi.jpg");
 background(Corgi);
 size(736, 588);
  
 tail = loadImage("Dtail.png");

tail.resize(150, 150);
}

void draw(){
  if(done == 0){
  if(mouseX<50 && mouseY<50){
   background(Corgi);
 }
 
 else{
  background(50, 50, 50);
}
 if(mousePressed){
   image(tail, mouseX - 100, mouseY - 10);
 }
 
 if(dist(mouseX, mouseY, tailX, tailY) < 10){
   background(Corgi);
   image(tail, mouseX - 100, mouseY - 10);
   done = 1; 
 }
}
}