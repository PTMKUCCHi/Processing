int angle;    //角度を設定するための変数
 
void setup(){
  size(400, 400, P3D);
  angle = 0;    //60度を設定
}
 
void draw(){
  background(0);
  
  //translate(width/2,height/2);
 
 ellipse(width/2,height/2,70,70);
 ellipse(width/2,height/2+70,15,50);
 
 rotate(PI/6); // 座標軸を 30°回転
 
 ellipse(width/2,height/2+70,15,50);
 
}