int x = 100;
int y = 100;
void setup(){
size(300, 300);
background(#03ECFF);
  fill(0);
  for(int i=0; i<3; i+=1){
 text("ice cream", x, y);
y+=20;
}
text(" banana", x, y);
}
void draw(){
}