Ball[] ball;

void setup ()
{
  size (640,480);
  ball = new Ball[100];
  for (int i=0;i<100;i++){
    ball[i]= new Ball();
  }
}

void draw ()
{
  background (255);
  
  for (int i=0;i<100;i++){
  
  ball[i].display();
  ball[i].move();
  }
}

void mousePressed ()
{
  fill(random(255), random(255), random(255), 100);
}

class Ball{
  float xpos, ypos , xSpeed, ySpeed;
  Ball(int startX, int startY){
  xpos = startX;
  ypos = startY;
  xSpeed = random(5);
  ySpeed = random(5);
  }
  
  void display(){
   ellipse(xpos, ypos, 50, 50);
  }
  
  void move(){
    if (xSpeed > 5)
  {
    xSpeed = 5;
  }
  
  if (xSpeed < -5)
  {
    xSpeed = -5;
  }
  
  if (ySpeed > 5)
  {
    ySpeed = 5;
  }
  if (ySpeed < -5)
  {
    ySpeed = -5;
  }

  if (xpos > width)
  {
    xSpeed *= -1;
  }
  
  if (ypos > height)
  {
    ySpeed *= -1;
  }
  
  if (xpos < 0)
  {
    xSpeed *= -1;
  }
  
  if (ypos < 0)
  {
    ySpeed *= -1;
  }
  
  xpos+= xSpeed;
  ypos+= ySpeed;
  }
}


