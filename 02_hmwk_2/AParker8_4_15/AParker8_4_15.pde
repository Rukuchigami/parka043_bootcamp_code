//Global Variables
int x = 0;
int y = 0;

//Properties
int rectSize = 20;
int speed = 4;

//state variable
int state = 0;

void setup(){
  size (640, 360);
}

void draw(){
  background (153, 255, 153);
  fill (102, 0, 102);
  stroke (0);
  rect(x, y, rectSize, rectSize);

  if (state == 0) {
    x = x + speed;
    y = y + speed;
    //nested if statement
    if ((x + y) > height ){
      x = height -rectSize;
      state = 1;
    }
    //nested if statement
    if ( (x + y) > width) {
      y = width -rectSize;
    }
  }
  else if (state == 1){
    y = y + speed;
    //nested if statement
    if (y > width ){
      y = width -rectSize;
      state = 2;
    }
  }
  


}
