// basic_coordinate_sample1

LineMan line_man1;

void setup() {
  size( 300, 200 );
  smooth();
  line_man1 = new LineMan();
}

void draw() {
  background( 0 );
  line_man1.run();
}

class LineMan {
  PVector pos_man;
  int dir_x;
  float ang_man;
  float ang_rarm, ang_larm;
  float ang_rleg, ang_lleg;

  LineMan() {
    pos_man = new PVector( 100, 100 );
    dir_x = 1;
    ang_man = 0.0;
    ang_rarm = 45.0;
    ang_larm = - 45.0;
    ang_rleg = 30.0;
    ang_lleg = - 30.0;
  }

  void run() {
    update();
    display();
  }

  void update() {
    float temp;

    temp = pos_man.x + dir_x;
    if ( temp < 0 || temp > width ) {
      dir_x = - dir_x;
      temp += 2 * dir_x;
    }
    pos_man.x = temp;

    ang_man += dir_x;

    ang_rarm += 1.0;
    ang_larm -= 2.0;

    ang_rleg -= 2.0;
    ang_lleg += 1.0;
  }

  void display() {
    stroke( 255 );
    strokeWeight( 3 );
    noFill();

    pushMatrix();
    translate( pos_man.x, pos_man.y );
    rotate( radians( ang_man ) );

    // draw body
    line( 0, 0, 0, 25 );

    // draw head
    pushMatrix();
    translate( 0, -10 );
    ellipse( 0, 0, 20, 20 );
    popMatrix();

    // draw arms
    pushMatrix();
    translate( 0, 5 );
    // right arm
    pushMatrix();
    rotate( radians( ang_rarm ) );
    line( 0, 0, 0, 15 );
    popMatrix();
    // left arm
    pushMatrix();
    rotate( radians( ang_larm ) );
    line( 0, 0, 0, 15 );
    popMatrix();
    popMatrix();

    // draw legs
    pushMatrix();
    translate( 0, 25 );
    // right leg
    pushMatrix();
    rotate( radians( ang_rleg ) );
    line( 0, 0, 0, 20 );
    popMatrix();
    // left leg
    pushMatrix();
    rotate( radians( ang_lleg ) );
    line( 0, 0, 0, 20 );
    popMatrix();
    popMatrix();

    popMatrix();
  }
}