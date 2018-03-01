 PImage Corgi;
 PImage tail;
void setup(){
 Corgi = loadImage("Corgi.jpg");
 background(Corgi);
 size(736, 588);
  
 tail = loadImage("tail.png");

tail.resize(50, 50);
}

void draw(){
  if(mousePressed){
   image(tail, mouseX-10, mouseY-20);
  }
  
  rect(10, 10, 70, 70);
 if(mouseX<80 && mouseX>10 && mouseY<80 && mouseY>10){
   background(50, 50, 50);
 }
 
}