

void setup(){
  size(300,500,P3D);
 
}

void draw(){
  background(0);
  
  fill(random(255),random(255),random(255));
  for(int i=0;i<1000;i++){
    pushMatrix();
    translate(random(-100,350),random(-100,500),random(50));
    box(30);
    
    popMatrix();
    
    
  }
}