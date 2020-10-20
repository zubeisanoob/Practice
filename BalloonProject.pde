Balloon bob;
Balloon chad;

void setup() {
  size(300, 300);
  bob = new Balloon(100, 50);
  chad = new Balloon(200, 50);
}

void draw() {
  bob.inflate();
  bob.show();
  chad.inflate();
  chad.show();
}

class Balloon {
  int myX, myY, size;
  Balloon(int x_, int y_) {
    myX = x_; myY = y_; size = 20;
  }
  void show() {
    fill(255, 0 ,0);
    ellipse(myX, myY, size, size);
  }
  void inflate() {
    size+=1;
  }
}
