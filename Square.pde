class Square{
  float x, y, w, h;
  int squareColor;
  public Square(float x, float y){
    this.x = x;
    this.y = y;
    w = 40;
    h = 40;
    squareColor = 0;
  }
  public void show(){
    if(squareColor == 0){
      image(red, x, y, w, h);
    } else if(squareColor == 1){
      image(orange, x, y, w, h);
    } else if(squareColor == 2){
      image(yellow, x, y, w, h);
    } else if(squareColor == 3){
      image(green, x, y, w, h);
    } else if(squareColor == 4){
      image(blue, x, y, w, h);
    } else {
      image(purple, x, y, w, h);
    } 
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
