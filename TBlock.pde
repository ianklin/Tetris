class TBlock extends Block{
  public TBlock(){
    super();
    s1 = new Square(x - 40, y);
    s2 = new Square(x, y);
    s3 = new Square(x + 40, y);
    s4 = new Square(x, y + 40);
    addToList();
  }
}
