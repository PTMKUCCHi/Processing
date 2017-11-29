
int bx=0;
int tx=400;
float x,y;
float v0=-20;
float g=9.8/5.0;
int t=0;
int flag=0;

float wx=0.1,wy=0;

float ground;

int WINDOW_SIZE_X=400;
int WINDOW_SIZE_Y=400;

void setup(){
  
  size(400,400);
  
  noStroke();
  smooth();
  
  ellipseMode(CENTER);
}



void draw(){
  background(110,234,12);
  
  fill(242,56,12);
  ellipse(bx,200,100,100);
  
  fill(25,143,154,54);
  triangle(tx,170,tx-50,220,tx+50,220);
  
  bx+=2;
  tx-=2;
  
  if(bx>410||tx<-10){
    bx=0;
    tx=400;
  }
  
  
  fill(255);
  rect(wx,wy,wx+25,400);
  
  wx*=1.09;
  
  if(wx+25>WINDOW_SIZE_X){
    wx=0.1;
  }
  fill(random(0,255),random(0,255),random(0,255));
   
  
  if(mousePressed){
    flag=1;
    
     x=mouseX;
     ground=mouseY;
  }
  
  if(flag==1){
    y=v0*t+0.5*g*t*t+ground;
    ellipse(x,y,40,40);
    t++;
  }
  
  if(y>400){
    flag=0;
    t=0;
    
  }
  
  //delay(50);
}

/*void keyPressed(){
  
 
  
  
  if(key==CODED){
    if(keyCode==RIGHT){
      x+=7;
    }
    if(keyCode==LEFT){
      x-=7;
    }
  }
  
}

*/