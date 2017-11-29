float yoff = 0.0;    

float fishX=0.0;
float speed;
int angle=0;


void setup() {
  size(640, 360);
  noStroke();
  //colorMode(HSB,300,100,100);
}

void draw() {
  background(105,204,224);
  
  int cloudX;
  float cloudY;

  fill(2,159,221);//wave
  beginShape(); 
 
  float xoff = 0;         
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(xoff, yoff), 0, 1, 200,300);
//mapは0-1で出力されたnoiseを200-300の間の数に直します。 
    vertex(x, y); 
    xoff += 0.05;
  }
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  fill(210,5,35);//sun
  ellipse(550,60,40,40);
  
  pushMatrix();
  translate(550,60);
  rotate(radians(angle));
  ellipse(38,0,23,8);
  ellipse(-38,0,23,8);
  ellipse(0,38,8,23);
  ellipse(0,-38,8,23);
  
  rotate(radians(45));
  ellipse(38,0,23,8);
  ellipse(-38,0,23,8);
  ellipse(0,38,8,23);
  ellipse(0,-38,8,23);
  
  popMatrix();
  
  fill(255);
  ellipse(fishX,320,40,20);//fish
  triangle(fishX-10,320,fishX-30,305,fishX-30,335);
  fishX++;
  if(mousePressed){
    fishX+=3;
  }
  
  if(fishX>width){
    fishX=0;
  }
  
  angle++;
  
  if(angle>=360){
    angle=0;
  }
  
  for(cloudX=0;cloudX<=600;cloudX+=50){
    cloudY=sin(radians(cloudX+frameCount))*0.8*100+50;
    fill(random(150,160),255,255);
    ellipse(cloudX,100,cloudY-20,cloudY-20);
  }
  
}