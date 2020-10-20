Coin aCoin, bCoin;

void setup()
{
  size(500, 300);
  textAlign(CENTER,CENTER);
  noLoop();
  aCoin = new Coin(50, 100);
  bCoin = new Coin(100, 150);
}
void draw()
{
  background(190);
  aCoin.show();
  bCoin.show();
}
void mousePressed()
{
  aCoin.flip();
  bCoin.flip();
  aCoin.percent();
  bCoin.percent();
  redraw();
}
class Coin
{
  boolean heads; 
  int myX, myY, headCount, tailsCount;
  Coin(int x_, int y_)
  {
    headCount = 0;
    tailsCount = 0;
     myX = x_;
     myY = y_;
  }
  void flip()
  {
    if(Math.random() < 0.5) {
      heads=true;
      headCount++;
    } else {
      heads=false;
      tailsCount++;
    }
  }
  void show()
  {
    if (heads){
      fill(255, 0, 0);
      text("HEADS", myX, myY+30);
    } else {
      fill(0, 0, 255);
      text("TAILS", myX, myY+30);
    }
    ellipse(myX, myY, 40, 40);
  }
  void percent() {
    System.out.println("Percentage of heads: " + (double)(headCount)/(headCount + tailsCount)*100 + "%");
    System.out.println("Percentage of tails: " + (double)(tailsCount)/(headCount + tailsCount)*100 + "%");
  }
}
