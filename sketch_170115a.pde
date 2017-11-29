
int x=100;
int y=100;

void setup(){
  size(300,300,P3D);
}


void draw(){
  background(255);
  noStroke();
  lights();
  
  translate(x,y,0);
   box(50);
  
  if(keyPressed==true){
    if(keyCode==RIGHT){
    x+=3;
    }
    
    else if(keyCode==DOWN){
      y+=3;
    }
      
      else if(keyCode==UP){
      y-=3;
      }
      else if(keyCode==LEFT){
        x-=3;
      }
     
  } 
  
  fill(x,y,125);
  
  if(x>300){
    x=0;
  }
  if(y>300)
  y=100;


text("x,y",x,y);

}
  
 
  