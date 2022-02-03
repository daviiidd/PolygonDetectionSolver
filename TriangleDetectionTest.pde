float x1, y1, x2, y2, x3, y3;

Detection d = new Detection();

void setup()
{
  size(800, 800);
  
  x1 = random(800);
  y1 = random(800);
  x2 = random(800);
  y2 = random(800);
  x3 = random(800);
  y3 = random(800);
  
  triangle(x1, y1, x2, y2, x3, y3);
}

void draw()
{  
  background(200);
  triangle(x1, y1, x2, y2, x3, y3);
  if (d.DetectTriangle(x1, y1, x2, y2, x3, y3, mouseX, mouseY))
  {
    fill(255, 0, 0);
  }
  else
  {
    fill(255, 255, 255);
  }
}
