PImage creeper;
PImage minecraft;
 public boolean isNear(int a, int b){
   if(abs(a-b) < 10 )
     return true;
     
    else
      return false;
 }
  
void setup(){
  size(1920, 1080); 
  
 minecraft = loadImage("MinecraftBackground.jpg");
 minecraft.resize(1920, 1080);
  creeper=loadImage("Creeper.png");
  creeper.resize(2,2);
}

void draw(){
   background(minecraft);
  image(creeper, 792, 802);
  image(creeper, 1703, 120);
  image(creeper, 318, 1023);
  println(mouseX + " " + mouseY);
  
    if(mousePressed){
    ellipse(mouseX, mouseY, 10, 10);
  
   
   if(isNear(mouseX, 792) && isNear(mouseY, 802)){
    textSize(50);
    text("Found!", 300, 300);
    fill(0, 255, 0);
  }
  
  else if(isNear(mouseX, 1703) && isNear(mouseY, 120)){
    textSize(50);
    text("Found! Now try and find the others.", 300, 300);
    fill(0, 255, 0);
  }
  
  else if(isNear(mouseX, 318) && isNear(mouseY, 1023)){
    textSize(50);
    text("Found!", 300, 300);
    fill(0, 255, 0);
  }
    
  else {
   fill(255, 0, 0); 
  }
    }
}