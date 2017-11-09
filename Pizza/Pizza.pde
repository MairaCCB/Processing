
void setup(){
  size(600, 600);
noStroke();

import processing.sound.*;     //at the top of the sketch
SoundFile sound;     //at the top of the sketch


fill(#EAC06F);
ellipse(300, 300, 500, 500);

fill(#C60808);
ellipse(300, 300, 425, 425);

fill(#FFE200);
ellipse(300, 300, 385, 385);

sound = new SoundFile(this, "ding.wav");     //in the setup method
}
void draw(){
if(mousePressed){
int x = mouseX;
int y = mouseY;
PImage pepperoni = loadImage("pepperoni.gif");
image(pepperoni, x, y);
  image(pepperoni, x, y);
image(pepperoni, x, y);
  image(pepperoni, x, y);
}

sound.play();     //where you want the sound to play

}