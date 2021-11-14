void piet(int x0, int y0, int x1, int y1, int N) {
  if (N == 0) { //(basis condition)
    color c[] = { #ff0000, #00ff00, #0000ff, #ffff00, #ffffff};
    fill(c[int(random(c.length))]);
    strokeWeight(4);
    rect (x0, y0, x1-x0-3, y1-y0-3);
  } else {
    int i = int(random(x0, x1));
    int j = int(random(y0, y1));
    piet(x0, y0, i, j, N-1);
    piet(i, y0, x1, j, N-1);
    piet(x0, j, i, y1, N-1);
    piet(i, j, x1, y1, N-1);
  }
}

void setup() {
  size(400, 400);
  frameRate(1);
}


void draw() {
  background(255);
  piet(1, 1, 400, 400, 2);
}
