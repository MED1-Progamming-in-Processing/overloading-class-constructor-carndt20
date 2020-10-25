class Rect {

  float x;
  float y;
  float x1;
  float y1;

  float xSpeed;
  float ySpeed;
  float xSpeed1;
  float ySpeed1;

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

  Rect(float x1, float y1, float xSpeed1, float ySpeed1, float rectS, float R, float G, float B, float state, int A) {
    this.x1 = x1;
    this.y1 = y1;
    this.xSpeed1 = xSpeed1;
    this.ySpeed1 = ySpeed1;
    this.rectS = rectS;
    this.R=R;
    this.G=G;
    this.B=B;
    this.A=A;
    this.state=state;
  }


  void move() {
    x += xSpeed;
    if (x < 0 || x > width-rectS) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height-rectS) {
      ySpeed *= -1;
    }
    
    x1 += xSpeed1;
    if (x1 < 0 || x1 > width-rectS) {
      xSpeed1 *= -1;
    }

    y1 += ySpeed1;
    if (y1 < 0 || y1 > height-rectS) {
      ySpeed1 *= -1;
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
