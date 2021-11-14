void setup() {
  size(640, 640);
  noLoop();
}

void draw() {
  drawCircle(width/2, 280, 3);
}

void drawCircle(int x, int radius, int level) {                    
  ellipse(x, height/2, radius*2, radius*2);      
  if(level > 1) {
    level--;
    drawCircle(x - radius/2, radius/2, level);
    drawCircle(x + radius/2, radius/2, level);
  }
}
