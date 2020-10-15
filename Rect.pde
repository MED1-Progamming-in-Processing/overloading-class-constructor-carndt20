class Rect {
  float x;
  float y;
  float xSpeed;
  float ySpeed;


  Rect(float x, float y, float xSpeed, float ySpeed) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }

  void move() {
    x += xSpeed;
    if (x < 0 || x > width-20) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height-20) {
      ySpeed *= -1;
    }
  }

  void display() {


    rect(x, y, 20, 20);
  }
}
