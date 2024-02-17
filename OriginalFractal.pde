
public void setup(){
  size(500,500);
  rectMode(CENTER);
  noFill();
  frameRate(2);
}

public void draw(){
  background(0);
  myFractal(250,250,200);
}

public void myFractal(int x, int y, int s){
  stroke((int)(Math.random()*255)+100,(int)(Math.random()*255)+100,(int)(Math.random()*255)+100);
  ellipse(x,y,s,s);
  stroke((int)(Math.random()*255)+100);
  rect(x,y,s+100,s+100);
  if(s > 20){
    rotate(5);
    myFractal(x-s/2,y+s/2,s-20);
    myFractal(x+s/2,y-s/2,s-30);
    
  }
}
