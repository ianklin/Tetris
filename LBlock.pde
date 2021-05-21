class LBlock extends Block{
  public LBlock(){
    super();
    s1 = new Square(x, y + 40);
    s2 = new Square(x, y);
    s3 = new Square(x - 40, y + 40);
    s4 = new Square(x - 80, y + 40);
    addToList();
  }
}
