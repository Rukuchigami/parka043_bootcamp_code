//Global Variables
int fillColor;
int circleX;
int circleY;

void setup() {
  size(500, 500);
}

void draw() {

  for (int x = 0; x < 50; x++) {
    for (int y = 0; y < 50; y++) {
      //Psudo 
      setCircleCoordinate(x, y);
      setFillRelativeToMouse();
      drawOneCircle();
      
      
    }
  }
}//ENDING THE DRAW LOOP

void setCircleCoordinate(int x, int y){
  circleX = 5+(x*10);
  circleY = 5+(y*10);
}


void setFillRelativeToMouse(){
  fillColor = int(map(dist(mouseX,mouseY,circleX,circleY), 0,250,255,0));
  if(fillColor <=200){
   fillColor = (27, 80,100); 
  }
  fill(fillColor);
  noStroke();
}

void drawOneCircle(){
  ellipse(circleX, circleY, 8, 8);
}