
void setup () {
  size (600,400);
  //background (22, 80, 100);
}

void draw () {
  background (random(255), random(255),random(255));
 // make an ellipse
//ellipse(width/2, height/2, 80, 80); 
stroke(40);
fill(random(255), random(255),random(255));
ellipse(mouseX, mouseY, 80, 80); 
}