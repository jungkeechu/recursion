void setup(){
  size(600, 600, P3D);
  smooth();
  noLoop();
}

void draw(){
  background(255);
  strokeWeight(10);
  for (int i = -300; i<= 300; i+=80) {
    pushMatrix();
    translate(width/2+i, height-20, i);
    branch(0);
    popMatrix();
  }
}

void branch(int depth) {
  if (depth < 12) {
    line(0, 0, 0, -height/10);
    translate(0, -height/10);
    rotate(random(-0.1, 0.1));
    if (random(1.0) < 0.6) {
      rotate(0.3);
      scale(0.7);
      pushMatrix();
      branch(depth + 1);
      popMatrix();
      rotate(-0.6);
      pushMatrix();
      branch(depth + 1);
      popMatrix();
      } else {
        branch(depth);
      }
  } else {
    noStroke();
    fill(#FFBFF9, 150);
    ellipse(0, 0, random(100, 300), random(100, 300));
    stroke(0);
  }
}

void mouseReleased() {
  redraw();
}
