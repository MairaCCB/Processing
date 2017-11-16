import processing.sound.*;     //at the top of the sketch
  SoundFile sound;     //at the top of the sketch
  
void setup() {
  size(600, 600);
  noStroke();
  
  PImage pizzaBox = loadImage("pizzaBox.gif");     //in setup method
pizzaBox.resize(600, 600);      //to match your canvas size
background(pizzaBox);       //in setup method

fill(#EAC06F);
  ellipse(300, 300, 400, 400);

  fill(#C60808);
  ellipse(300, 300, 325, 325);

  fill(#FFE200);
  ellipse(300, 300, 285, 285);

  sound = new SoundFile(this, "plop.wav");     //in the setup method
  
}
void draw() {
  if (mousePressed) {
    int x = mouseX;
    int y = mouseY;
    PImage pepperoni = loadImage("pepperoni.gif");
    image(pepperoni, x, y);
    
    sound.play();     //where you want the sound to play
    
    PImage pizza = loadImage("pizza.gif");
image(pizza, x+50, y);
  }
}