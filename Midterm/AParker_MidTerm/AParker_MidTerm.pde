//Global Variable
int fillColor;
int circleX;
int circleY;

void setup() {
  size(600, 600);
  colorMode(HSB);
}


void draw() {
  background(0, 37, 74);
  ellipseMode(CORNER);
  int circleSize = 20;

  for (int y = 0; y < mouseY; y = y + circleSize) {
    for (int x = 0; x < mouseX; x = x  + circleSize) {
      setCircleCoordinate(x, y);
      setFillRelativeToMouse();
      drawOneCircle();
    }
  } //<>//
}

void setFillRelativeToMouse () {
  fillColor = int(map(dist(mouseX,mouseY,circleX,circleY), 255 ,204 ,51 ,0));
 if(fillColor<=60){
  fillColor=(180); 
 }
 fill (fillColor);
 noStroke();
}

void drawOneCircle(){
 ellipse(circleX,circleY, 20, 20); 
}

void setCircleCoordinate (int x, int y){
 circleX = 5+(x*10);
 circleY = 5+(y*10);
}