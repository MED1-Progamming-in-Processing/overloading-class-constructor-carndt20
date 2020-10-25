Rect rect;
Rect rect1;


float rectS = random(height, width);
float xSpeed = random(-3, 3);
float ySpeed = random(-3, 3);
float xSpeed1 = random(-3, 3);
float ySpeed1 = random(-3, 3);

float xStartPos = random(width);
float yStartPos = random(height);
float xStartPos1 = random(width);
float yStartPos1 = random(height);

float yStartPos4 = random(height);
color grey = #838383;
float R = random(255);
float G = random (255);
float B = random (255);


void setup() {
  size(400, 400);

  rect = new Rect(xStartPos, yStartPos, xSpeed, ySpeed, rectS, R, G, B, 1);
  rect1 = new Rect(xStartPos1, yStartPos1, xSpeed1, ySpeed1, rectS, R, G, B, 2, 1);
  
}

void draw() {
  background(200);

  //circle.move();
  //circle.display();
  rect.move();
  rect.display();
  rect.overlap();
  
  rect1.move();
  rect1.display();
  rect.overlap1();
 }
