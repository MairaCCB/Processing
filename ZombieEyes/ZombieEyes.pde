void setup(){
size(490, 600);
PImage face = loadImage("face.jpg");
image(face, 0, 0);
}
void draw(){
  
  if(mousePressed){
    println(mouseX);
    println(mouseY);
    
    noStroke();
  fill(mouseX, mouseY, 250);
  ellipse(81, 165, 25, 50);
  ellipse(362, 165, 25, 50);
  }
  
  if(mousePressed){
  noStroke();
  fill(0, 0, 0);
  ellipse(mouseX, 165, 15, 25);
  ellipse(mouseX + 281, 165, 15, 25);
  }
}