int x1=100;
int WINDOW_SIZE_X=300;
int x2=200;
int x3=300;


void setup(){
  
  size(400,400);
  noStroke();
}

void draw(){
  background(255);
  
  
  fill(248,195,99,190);//orange
  triangle(320,100,80,200,130,330);
  
  fill(248,195,99,190);//orange
  triangle(270,30,190,60,350,110);
  
  fill(120,216,196,190);//skyblue
  triangle(120,100,80,330,180,210);
  
  fill(118,216,195,190);//skyblue
  triangle(380,50,290,80,340,250);
  
  fill(233,104,135,190);//pink
  triangle(220,210,230,380,310,350);
  
  fill(233,104,135,190);//pink
  triangle(150,260,40,370,170,320);
  
  fill(233,104,135,190);//pink
  triangle(140,30,230,40,200,220);
  
  fill(42,209,129,190);//green
  triangle(200,250,240,350,350,290);
  
  fill(42,209,129,190);//green
  triangle(10,60,120,170,180,105);


}