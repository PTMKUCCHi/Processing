float x1=0;
float x2=200;
float y1=0;
float y2=0;

void setup(){
  size(200,200);
  fill(255,255,255,200);
}


void draw(){
  background(0);
  
  
  blendMode(ADD);
  triangle(x1,100,x1-50,150,x1+50,150);
  triangle(x2,100,x2-50,150,x2+50,150);
  
  
  x1++;
  x2--;
}