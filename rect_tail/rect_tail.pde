Rect rect;
Rect rect1;

int num = 50;
Rect [] mySnake;
float scale = 0.995;


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
  rectMode(CENTER);  
  rect = new Rect(xStartPos, yStartPos, xSpeed, ySpeed, rectS, R, G, B, 1);
  rect1 = new Rect(mouseX, mouseY, rectS, R, G, B, 2);
  mySnake = new Rect[50];

  for (int i = 0; i < num; i++) {
    mySnake[i] = new Rect(mouseX, mouseY, rectS, R, G, B, 2);
  }
}

void draw() {
  background(200);
  for (int i = num-1; i > 0; i--) {
    mySnake[i].x1=mySnake[i-1].x1;
    mySnake[i].y1=mySnake[i-1].y1;
    mySnake[i].rectS=mySnake[i-1].rectS*pow(scale, i);
  }
  // Add the new values to the beginning of the array
  mySnake[0].x1 = mouseX;
  mySnake[0].y1 = mouseY;
  // Draw the "tail"
  for (int i = 0; i < num; i++) {
    mySnake[i].display();
  }

  //circle.move();
  //circle.display();
  rect.move();
  rect.display();
  rect.overlap();

  rect1.x1=mouseX;
  rect1.y1=mouseY;
  rect1.display();
  rect.overlap1();
}
