int length = 200;
int bob;
int sandy;
float rotation = 0.5;
public void setup()
{
noStroke();
size(500,500,P3D);
background(255);
}
public void draw()
{
  background(255);
  rotateY(PI * rotation);
sierpinski(2, height - 2, length);
rotation *= 0.999;

}
public void mouseClicked()//optional
{
    bob = (int)(Math.random()*255 + 1);
    sandy = (int)(Math.random()*255 + 1);
   length= length + 100;
}
public void sierpinski(int x, int y, int len) 
{
fill(0,0,0);
  if(len<=20){
     // rotateY( PI + rotation);
    triangle(x,y,x+len,y,x+len/2,y-len);
  } else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}







