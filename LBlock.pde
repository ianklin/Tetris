class LBlock extends Block{
  public LBlock(){
    super();
    s1 = new Square(x, y - 40);
    s2 = new Square(x, y);
    s3 = new Square(x - 40, y);
    s4 = new Square(x - 80, y);
    addToList();
  }
  public void rotateBlock(){
    switch(rotation%4){
      case 0:
        s1.goTo(x,y-40);
        s2.goTo(x,y);
        s3.goTo(x-40,y);
        s4.goTo(x-80,y);
        break;
      case 1:
        s1.goTo(x+40,y);
        s2.goTo(x,y);
        s3.goTo(x,y-40);
        s4.goTo(x,y-80);
        break;
      case 2:
        s1.goTo(x,y+40);
        s2.goTo(x,y);
        s3.goTo(x+40,y);
        s4.goTo(x+80,y);
        break;
      case 3:
        s1.goTo(x-40,y);
        s2.goTo(x,y);
        s3.goTo(x,y+40);
        s4.goTo(x,y+80);
        break;
    }
  }
}
