int dragX,dragY,moveX,moveY;

int eyex,eyey;
int Langle=0,Rangle=0;

void setup(){
  size(400,300);
 smooth();
 noStroke();
}

void draw(){
  background(127,200,219);
  
  noStroke();
  fill(0,104,160);
  ellipse(200,300,400,380);//base
  fill(255);
  ellipse(200,300,370,200);//base
  
  fill(255);
  stroke(0);
  ellipse(148,200,105,110);//eye_rinkaku
  ellipse(253,200,105,110);//eye_rinkaku
 
  stroke(0);//hige
  line(-10,230,96,264);
  line(-10,269,97,278);
  line(-10,302,96,296);
  
  line(290,264,410,230);
  line(290,278,410,269);
  line(290,296,410,302);
  
  //rotate(angle);
  fill(5,5,5);
  pushMatrix();//Leye
  translate(147,200);
  rotate(radians(Langle));
  ellipse(38,0,25,25);
  popMatrix();
  
  pushMatrix();//Reye
  translate(252,200);
  rotate(radians(Rangle));
  ellipse(-38,0,25,25);
  popMatrix();
  
    noStroke();
  fill(180,23,51);
  ellipse(200,245,40,40);//nose
  
  Langle+=2;
  Rangle+=2;
  
  
  
}

void mousePressed(){
  
  println(mouseX,mouseY);

}