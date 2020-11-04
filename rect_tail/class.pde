class Rect {

  float x;
  float y;
  float x1;
  float y1;

  float xSpeed;
  float ySpeed;
  float xSpeed1;
  float ySpeed1;
  float temp_x;
  float temp_y;


  float rectS;
  float state;
  float R;
  float G;
  float B;
  int A;
  int T;


  Rect(float x, float y, float xSpeed, float ySpeed, float rectS, float R, float G, float B, float state) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.rectS = rectS;
    this.R=R;
    this.G=G;
    this.B=B;
    this.state=state;
  }

  Rect(float temp_x, float temp_y, float rectS, float R, float G, float B, float state) {
    x1 = temp_x;
    y1 = temp_y;
    this.rectS = rectS;
    this.R=R;
    this.G=G;
    this.B=B;
    this.state=state;
  }


  void move() {
    x += xSpeed;
    if (x < 0 || x > width-rectS/2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height-rectS/2) {
      ySpeed *= -1;
    }
  }




  void overlap() {
    float d=dist(rect.x, rect.y, rect1.x1, rect.y1);
    if (d<rectS) {
      rect.R=random(255);
      rect.G=random(255);
      rect.B=random(255);
      rect1.R=random(255);
      rect1.G=random(255);
      rect1.B=random(255);
    }
  }
  void overlap1() {
    float d=dist(rect.x, rect.y, rect1.x1, rect1.y1);
    if (d<rectS) {
      rect.R=random(255);
      rect.G=random(255);
      rect.B=random(255);
      rect1.R=random(255);
      rect1.G=random(255);
      rect1.B=random(255);
    }
  }



  void display() {


    fill(R, G, B);

    if (state == 1) {
      rect(x, y, rectS, rectS);
    }
    if (state == 2) {
      rect(x1, y1, rectS, rectS);
    }
  }
}
