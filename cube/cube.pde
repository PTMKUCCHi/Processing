void setup() {
  size(400, 400, P3D);
  noStroke();
}
 
void draw() {
  background(0);
 
  translate(width/2, height/2);    //立体の中心を画面中央に移動  
  rotateY(radians(mouseX));    //Y軸に対してマウスのX軸の動きによって角度を変える
  rotateX(radians(mouseY));    //Y軸に対してマウスのX軸の動きによって角度を変える 
 
  fill(255);
 
  scale(100);    //拡大
  beginShape(QUADS);
 
  //正面
  fill(255, 0, 0);
  vertex(-1,  1,  1);
  vertex( 1,  1,  1);
  vertex( 1, -1,  1);
  vertex(-1, -1,  1);
  //右
  fill(0, 255, 0); 
  vertex( 1,  1,  1);
  vertex( 1,  1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1,  1);
  //後ろ
  fill(0, 0, 255); 
  vertex( 1,  1, -1);
  vertex(-1,  1, -1);
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  //左
  fill(255, 255, 0); 
  vertex(-1,  1, -1);
  vertex(-1,  1,  1);
  vertex(-1, -1,  1);
  vertex(-1, -1, -1);
  //下
  fill(0, 255, 255); 
  vertex(-1,  1, -1);
  vertex( 1,  1, -1);
  vertex( 1,  1,  1);
  vertex(-1,  1,  1);
  //上
  fill(255, 0, 255); 
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1,  1);
  vertex(-1, -1,  1);
 
  endShape();
}