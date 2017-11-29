int frame=60;
int sw;


void setup(){
  size(300,300);
  noStroke();
  rectMode(CENTER);
}

void draw(){

    if(sw==1){
    fill(233,104,135,100);//pink
    rect(mouseX,mouseY,50,50);
    sw=0;
    }
  
  if(sw==2){
    fill(118,216,195,100);//skyblue
    rect(mouseX,mouseY,50,50);
    sw=0;
  }
  
  if(sw==3){
     fill(248,195,99,100);//orange
     rect(mouseX,mouseY,50,50);
    sw=0;
  }
  
  println(sw);
  
}

void mousePressed(){
  sw=(int)random(4);
  
}