class Block{
  float x, y;  
  Square s1, s2, s3, s4;
  public Block(){
    x = 200;
    y = 0;
  }
  public void addToList(){
    allSquares.add(s1);
    allSquares.add(s2);
    allSquares.add(s3);
    allSquares.add(s4);
  }
  public void show(){
    s1.show();
    s2.show();
    s3.show();
    s4.show();
  }
  public void fall(){
    this.y += 40;
    s1.fall();
    s2.fall();
    s3.fall();
    s4.fall();
  }
  public boolean touchBottom(){
    if(s1.y >= 760 || s2.y >= 760 || s3.y >= 760 || s4.y >= 760){
      return true;
    }
    return false;
  }
  public void left(){
    if(!touchLeft()){
      this.x -= 40;
      s1.left();
      s2.left();
      s3.left();
      s4.left();
    }
  }
  public void right(){
    if(!touchRight()){
      this.x += 40;
      s1.right();
      s2.right();
      s3.right();
      s4.right();
    }
  }
  public boolean touchLeft(){
  if(s1.x <= 0 || s2.x <= 0 || s3.x <= 0 || s4.x <= 0){
    return true;
    }
  return false;
  }
  public boolean touchRight(){
    if(s1.x >= 360 || s2.x >= 360 || s3.x >= 360 || s4.x >= 360){
      return true;
    } 
    return false;
  }
}
