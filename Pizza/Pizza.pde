void setup(){
  size(600, 600);
noStroke();

fill(#EAC06F);
ellipse(300, 300, 500, 500);

fill(#C60808);
ellipse(300, 300, 425, 425);

fill(#FFE200);
ellipse(300, 300, 385, 385);
}
void draw(){
PImage pepperoni = loadImage("pepperoni.gif");
image(pepperoni, 10, 10);
  
  
}