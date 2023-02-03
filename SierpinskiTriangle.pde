
public void setup()
{
  size(800, 800);
}
public void draw()
{
  background(250,241,220);
  sierpinski(50,775,mouseY);
}
public void sierpinski(int x, int y, int len) 
{
  if(len < 20) {
    triangle(x,y,x+(len/2), y-len, x + len, y);
  }
  else 
  {
     //fill(234,62,76);
     fill((int)(Math.random()*57), (int)(Math.random()*55), (int)(Math.random()*240));
     sierpinski(x,y,len/2);
     sierpinski(x+(len/2),y, len/2);
     sierpinski(x +(len/4), y -(len/2), len/2);
  }  
}
// green: fill((int)(Math.random()*67), (int)(Math.random()*183), (int)(Math.random()*92));
