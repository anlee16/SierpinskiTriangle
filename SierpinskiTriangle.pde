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
public void mouseDragged()//optional
{
    rect(0, 0, width, height);
    bob = (int)(Math.random()*255 + 1);
    sandy = (int)(Math.random()*255 + 1);
    if(length == 200) {
        length = 300;
    } else if(length == 300) {
        length = 400;
    }else if(length == 400) {
        length = 500;
    } else if(length == 500) {
         length = 600;
    }else {}
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



