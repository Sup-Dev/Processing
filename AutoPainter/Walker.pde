class Walker
{
  float x,y;
  float tx, ty;
  
  Walker()
  {
    tx = 0;
    ty = 10000;
  }
  
  void display()
  {
    stroke(0);
  float red = map(x, 0, width, 0, 255);
  float blue = map(y, 0, width, 0, 255);
  float green = dist(x,y,width/2,height/2);
  
   
  noStroke();
  
    
  stroke(red, green, blue, 255);
  strokeWeight(3);
  
    point(x,y);
  }
  
  void step()
  {
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    
    tx += 0.01;
    ty += 0.01;
  }
}
