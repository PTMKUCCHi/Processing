
float angle=0;
float angle2=0;
float angle3=0;
float angle4=0;

void setup(){
  size(400,400);
  
  
  rectMode(CENTER);
}

void draw(){
  background(0);
  //fill(random(210,255),random(210,255),random(210,255),random(130,255));
  pushMatrix();
  translate(200,200);
  rotate(angle);
  for(int i=0;i<12;i++){
    fill(random(230,255),random(230,255),random(230,255),random(100,255));
    rect(0,-70,25,25);
    rotate(radians(360/12));
    
  }
  
  rotate(angle2);
  
  for(int i=0;i<12;i++){
    fill(random(230,255),random(230,255),random(230,255),random(100,255));
    rect(0,-100,30,30);
    rotate(radians(360/12));
    
  }
  
   rotate(angle3);
  for(int i=0;i<7;i++){
    fill(random(230,255),random(230,255),random(230,255),random(100,255));
    rect(0,-40,25,25);
    rotate(radians(360/7));
    
  }
  
  rotate(angle4);
  for(int i=0;i<18;i++){
    fill(random(230,255),random(230,255),random(230,255),random(100,255));
    rect(0,-130,25,25);
    rotate(radians(360/18));
    
  }
  
  
   popMatrix();
  angle+=0.05;
  angle2-=0.1;
  angle3-=0.05;
  angle4+=0.14;
}

void mousePressed(){
  stop();
  
}
void mouseReleased(){
 redraw(); 
}