float mx;
float my;
float easing = 0.1;
int radius = 24;

void setup() {
  size(640, 360);
  noStroke(); 
  ellipseMode(RADIUS);
}

void draw() { 
  background(110, 0, 128);
  
  if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY - my) * easing;
  }
  
  fill(10);  
  ellipse(mx, my, radius, radius);
}
