int w = 500;

 int h = 500;

int c = 0;
void setup(){
size(600, 600);


}
void draw() {
 
  
  if(w>50){
  if(c%2==0){
  
  fill(139, 50 , 50);
  }
    else{
    fill(255, 255, 255);
    
    }
    ellipse(300, 300, w, h);
  c++;
  w-=30;
  h-=30;
  }
  
  
}