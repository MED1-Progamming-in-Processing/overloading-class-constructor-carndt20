Rect rect;

void setup() {
  size(300, 300);

  rect = new Rect(random(width), random(height), random(-3, 3), random(-3,3));
  
}

void draw() {
  background(200);

  //circle.move();
  //circle.display();
  rect.move();
  rect.display();
 }
