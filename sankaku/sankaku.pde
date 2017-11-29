float x1=50;
float y1=75;

float x2=50;
float y2=75;

float u=0;
int t=35;

void setup(){
  
  size(600,200);
}



void draw(){
  background(0);
  fill(235,42,112);
  for(int i=0;i<600;i+=100){
    
    triangle(x1+i,y1,x1+i-50,y1+70,x1+i+50,y1+70);
    
  }
  
  fill(23,52,211);
  for(int i=0;i<600;i+=100){
    
    triangle(x2+i,y2+50-u,x2+i-u,y2+20+u,x2+i+u,y2+20+u);
    
  }
  
  fill(235,3,121);
  triangle(300,70,250,120,350,120);
  
  rotate(u);
  
  u+=0.5;
 
}