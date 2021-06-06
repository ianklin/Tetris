class Block {
  float x, y;  
  Square s1, s2, s3, s4;
  int rotation;
  int blockColor;
  int randint = floor(random(0,6));
  public Block() {
    x = 200;
    y = 0;
    rotation = 0;
    blockColor = randint;
  }
  public void addToList() {
    allSquares.add(s1);
    allSquares.add(s2);
    allSquares.add(s3);
    allSquares.add(s4);
  }
  public void show() {
    s1.squareColor = blockColor;
    s2.squareColor = blockColor;
    s3.squareColor = blockColor;
    s4.squareColor = blockColor;
    if(blockColor == 0){
      s1.show();
      s2.show();
      s3.show();
      s4.show();
    } else if(blockColor == 1){
      s1.show();
      s2.show();
      s3.show();
      s4.show();
    } else if(blockColor == 2){
      s1.show();
      s2.show();
      s3.show();
      s4.show();
    } else if(blockColor == 3){
      s1.show();
      s2.show();
      s3.show();
      s4.show();
    } else if(blockColor == 4){
      s1.show();
      s2.show();
      s3.show();
      s4.show();
    } else {
      s1.show();
      s2.show();
      s3.show();
      s4.show();
    } 
  }
  public void fall() {
    this.y += 40;
    s1.fall();
    s2.fall();
    s3.fall();
    s4.fall();
  }
  public boolean touchBottom() {
    for (int i = 0; i < allSquares.size() - 4; i++) {
      if (s1.y == allSquares.get(i).y - 40 && s1.x == allSquares.get(i).x) {
        return true;
      }
      if (s2.y == allSquares.get(i).y - 40 && s2.x == allSquares.get(i).x) {
        return true;
      }
      if (s3.y == allSquares.get(i).y - 40 && s3.x == allSquares.get(i).x) {
        return true;
      }
      if (s4.y == allSquares.get(i).y - 40 && s4.x == allSquares.get(i).x) {
        return true;
      }
    }
    if (s1.y >= 760 || s2.y >= 760 || s3.y >= 760 || s4.y >= 760) {
      return true;
    }
    return false;
  }
  public boolean touchLeft() {
    for (int i = 0; i < allSquares.size() - 4; i++) {
      if (s1.y == allSquares.get(i).y && s1.x == allSquares.get(i).x + 40) {
        return true;
      }
      if (s2.y == allSquares.get(i).y && s2.x == allSquares.get(i).x + 40) {
        return true;
      }
      if (s3.y == allSquares.get(i).y && s3.x == allSquares.get(i).x + 40) {
        return true;
      }
      if (s4.y == allSquares.get(i).y && s4.x == allSquares.get(i).x + 40) {
        return true;
      }
    }
    if (s1.x <= 0 || s2.x <= 0 || s3.x <= 0 || s4.x <= 0) {
      return true;
    }
    return false;
  }
  public boolean touchRight() {
    for (int i = 0; i < allSquares.size() - 4; i++) {
      if (s1.y == allSquares.get(i).y && s1.x == allSquares.get(i).x - 40) {
        return true;
      }
      if (s2.y == allSquares.get(i).y && s2.x == allSquares.get(i).x - 40) {
        return true;
      }
      if (s3.y == allSquares.get(i).y && s3.x == allSquares.get(i).x - 40) {
        return true;
      }
      if (s4.y == allSquares.get(i).y && s4.x == allSquares.get(i).x - 40) {
        return true;
      }
    }
    if (s1.x >= 360 || s2.x >= 360 || s3.x >= 360 || s4.x >= 360) {
      return true;
    } 
    return false;
  }
  public void left() {
    if (!touchLeft()) {
      this.x -= 40;
      s1.left();
      s2.left();
      s3.left();
      s4.left();
    }
  }
  public void right() {
    if (!touchRight()) {
      this.x += 40;
      s1.right();
      s2.right();
      s3.right();
      s4.right();
    }
  }
  public void addRotate(){
    rotation++;
    rotateBlock();
    if(outOfBounds()){
      rotation--;
      rotateBlock();
    }
  }
  public void rotateBlock(){
  }
  public boolean outOfBounds(){
    for (int i = 0; i < allSquares.size() - 4; i++) {
      if (s1.y == allSquares.get(i).y && s1.x == allSquares.get(i).x) {
        return true;
      }
      if (s2.y == allSquares.get(i).y && s2.x == allSquares.get(i).x) {
        return true;
      }
      if (s3.y == allSquares.get(i).y && s3.x == allSquares.get(i).x) {
        return true;
      }
      if (s4.y == allSquares.get(i).y && s4.x == allSquares.get(i).x) {
        return true;
      }
    }
    if (s1.x >= 400 || s2.x >= 400 || s3.x >= 400 || s4.x >= 400) {
      return true;
    }
    if (s1.x <= -40 || s2.x <= -40 || s3.x <= -40 || s4.x <= -40) {
      return true;
    }
    if (s1.y >= 800 || s2.y >= 800 || s3.y >= 800 || s4.y >= 800) {
      return true;
    }
    return false;
  }
}
