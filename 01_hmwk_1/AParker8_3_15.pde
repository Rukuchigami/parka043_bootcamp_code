
void setup () {
  size(500, 500);
}

void draw (){
  background(255, 118, 38);
  //system variable
  
 //Draw an alien

//head
noStroke();
fill(36, 241, 84);
ellipse(width/2, height/2, 100, 200);
//mouth
ellipse(width/2, (height/2)+60, 60, 240);
//eyes
fill(0);
ellipse((width/2)-30, (height/2)-20, 20, 20);
ellipse((width/2)+30, (height/2)-20, 20, 20);
fill(225);
ellipse((width/2)-30, (height/2)-20, 10, 10);
ellipse((width/2)+30, (height/2)-20, 10, 10);

//nose
fill(0);
ellipse(width/2, (height/2)+40, 50, 10);

//body
fill(36, 241,84);
ellipse(width/2, (height/2)+180, 200, 60);
}


