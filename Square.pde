class Square{
  float x, y, w, h;
  public Square(float x, float y){
    this.x = x;
    this.y = y;
    w = 40;
    h = 40;
  }
  public void show(){
    square(x, y, w);
  }
  public void goTo(float x, float y){
    this.x = x;
    this.y = y;
  }
  public void fall(){
    this.y += 40;
  }
  public void left(){
    this.x -= 40;
  }
  public void right(){
    this.x += 40;
  }
}
