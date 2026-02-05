public void setup()
{
size(400,400);

}
public void draw()
{
background (0);
sierpinski(0,400,400);
}
public int m= 50;
public void mouseDragged()//optional
{
if (mouseX>pmouseX&&m>10)
m=m-2;
else if(mouseX<pmouseX)
m=m+2;
}
public void sierpinski(int x, int y, int len) 
{
if(len<=m){
color(200,200,200);
triangle(x,y,x+len/2,y-len,x+len,y);
}
else{
sierpinski(x,y,len/2);
sierpinski(x+(len/2),y,len/2);
sierpinski(x+(len/4),y-(len/2),(len/2));
}
}
