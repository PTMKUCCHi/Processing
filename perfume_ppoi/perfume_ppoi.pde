
float w=0,h=0;
float v=0;
float z=-100;

void setup(){
  size(400,400,P3D);
  //noStroke();
  //noFill();
  rectMode(CENTER);
 
}


void draw(){
  background(100,23,123);
  
  translate(200,200,z);
  box(100,100,1);
  
  w++;
  h++;
  
 
  if(v<150||v>=160){
    v+=10;
    z+=20;
  }
  
  else if(v<160){
    v+=0.5;
    z+=0.5;
  }
  
  //camera(0, 0, 10, 0, 0, 0, 0, 1, 0);
  
  
}