public class polygon {

  int[][] p;
  int cx, cy;

  polygon( int[][] tempPoints, int centerX, int centerY ) {
    p = tempPoints;
    cx = centerX;
    cy = centerY;
  }

  void display() {
    triangle(p[0][0], p[1][0], p[0][p[0].length-1], p[1][p[1].length-1], cx, cy); //covers wraparound
    for ( int i = 0; i < p[0].length-1; i++) {
      triangle(p[0][i], p[1][i], p[0][i+1], p[1][i+1], cx, cy);
    }
  }

  void update() {

    if (d.DetectTriangle(p[0][0], p[1][0], p[0][p[0].length-1], p[1][p[1].length-1], cx, cy, mouseX, mouseY)) {
      fill(255, 0, 0);
      triangle(p[0][0], p[1][0], p[0][p[0].length-1], p[1][p[1].length-1], cx, cy);
    } //covers wraparound again

    for ( int i = 0; i < p[0].length-1; i++) {
      if (d.DetectTriangle(p[0][i], p[1][i], p[0][i+1], p[1][i+1], cx, cy, mouseX, mouseY)) {
        fill(255, 0, 0);
        triangle(p[0][i], p[1][i], p[0][i+1], p[1][i+1], cx, cy);
      }
    }
  }
}
