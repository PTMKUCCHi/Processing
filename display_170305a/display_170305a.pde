float[] y1=new float [50];
float[] y2=new float [50];
float[] y11=new float [50];
float[] y22=new float [50];
float[] y111=new float [50];
float[] y222=new float [50];

float tx=0.0,tx1=300;
float ty=400,ty1=0;
float speed=10.0;
float q=0.0;

int f;

void setup(){
  size(300,400);
  
  
  for(int i=0;i<y1.length;i++){
    y1[i]=random(-2000,2000);
  }
  for(int i=0;i<y11.length;i++){
    y11[i]=random(-2000,2000);
  }
  for(int i=0;i<y111.length;i++){
    y111[i]=random(-2000,2000);
  }
  for(int j=0;j<y2.length;j++){
    y2[j]=random(-2000,2000);
  }
  
  for(int j=0;j<y22.length;j++){
    y22[j]=random(-2000,2000);
  }
  for(int j=0;j<y222.length;j++){
    y222[j]=random(-2000,2000);
  }
}

void draw(){
  background(0);
  noFill();
  stroke(255);
  for(int i=0;i<y1.length;i++){
    y1[i]+=0.5;
    float x1=i*5.4;
    triangle(x1,y1[i],x1-15,y1[i]-25,x1+15,y1[i]-25);
  }
  
  for(int i=0;i<y11.length;i++){
    y11[i]+=0.6;
    float x11=i*5.4;
    triangle(x11,y11[i],x11-15,y11[i]-25,x11+15,y11[i]-25);
  }
  for(int i=0;i<y111.length;i++){
    y111[i]+=0.7;
    float x111=i*5.4;
    triangle(x111,y111[i],x111-15,y111[i]-25,x111+15,y111[i]-25);
  }
  
  
  for(int j=0;j<y2.length;j++){
    y2[j]+=0.3;
    float x2=j*5.4;
    ellipse(x2,y2[j],30,30);
  }
  for(int j=0;j<y22.length;j++){
    y22[j]+=0.5;
    float x22=j*5.4;
    ellipse(x22,y22[j],30,30);
  }
  for(int j=0;j<y222.length;j++){
    y222[j]+=0.7;
    float x222=j*5.4;
    ellipse(x222,y222[j],30,30);
  }
  
  if(f==1){
    fill(255);
    triangle(tx,ty,tx-20,ty+30,tx+20,ty+30);
    tx+=speed+q-0.1;
    ty-=speed+q+0.7;
    q-=0.3;
    
    if(tx>160){
       f=2;
       //delay(100);
    }
    
    
  }
  
  if(f==2){
    fill(255);
    triangle(tx,ty,tx-20,ty+30,tx+20,ty+30);
    tx-=speed+q;
    ty-=speed+q;
    q+=0.3;
  }
  
  
  println(tx);
  
}
  
void mousePressed(){
  f=1;
}