//Global Variables

float r= 100;
float theta = 0;
float speed = 0.05;


void setup(){
  size (500, 500);
  background(0);
  
}


void draw(){
  println(frameCount);
  float x = r * cos(frameCount*speed);
  float y = r * sin(frameCount*speed);
  fill(255, 255, 0);
  ellipse(x+width/2, y+height/2, 20, 20);
  theta += 0.5;
  speed += 1;
 
  fill (0,255,200);
  rect(theta, height/2, 15,15);
  theta += 0.5;
}
