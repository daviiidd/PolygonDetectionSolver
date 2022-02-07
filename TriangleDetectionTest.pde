

float x1, y1, x2, y2, x3, y3;
Detection d = new Detection();
int[][] poly = {{200,200,100,100,200,200,300,300,400,400,300,300} //x points in plygon
               ,{200,300,300,400,400,500,500,400,400,300,300,200}}; //y points
//theres probably a better way to do this ^
polygon p;

void setup()
{
  size(800, 800);
  p = new polygon(poly, 250, 350); //all the points and a center point
}

void draw() {  
  noStroke();
  background(255);
  fill(255,255,0);
  p.display();
  p.update();
  /*
  strokeWeight(5);
  point(250,350);
  point(200,200);
  point(200, 300);
  point(100, 300);
  point(100, 400);
  point(200, 400);
  point(200, 500);
  point(300, 500);
  point(300, 400);
  point(400, 400);
  point(400, 300);
  point(300, 300);
  point(300, 200);
  */
  
  
}
