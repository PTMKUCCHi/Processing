float y1=0;
void setup(){
  
  size(400,600,P3D);
  
}


void draw(){
  background(255,255,255,100);
  noFill();
  pushMatrix();
  translate(50,0,-50);
  box(100,y1*2.0,100);
  popMatrix();
  
  fill(10,10,10,100);
  triangle(0,0,100,0,100,y1);
  
  y1++;
  
  //pushMatrix();
  //translate(100,0,0);
  //box(50,y1,20);
  //popMatrix();
  
  
  
}