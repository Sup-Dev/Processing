Walker w;

void setup()
{
  size(640, 960);
  w = new Walker();
  background(0);
}

void draw()
{
  w.step();
  w.display();
}
