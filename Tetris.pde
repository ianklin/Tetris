Block block1;
ArrayList<Square> allSquares = new ArrayList<Square>();
int timer;
void setup(){
  size(400,800);
  block1 = new OBlock();
  timer = 0;
}

void draw(){
  background(150,150,150);
  block1.show();
  timer++;
  if(timer > 55){
    block1.fall();
    timer = 0;
  }
  if(block1.touchBottom()){
    block1 = new OBlock();
  }
  for(int i = 0; i < allSquares.size();i ++){
    allSquares.get(i).show();
  }
}

void keyPressed(){
  if(keyCode == LEFT){
    block1.left();
  }
  if(keyCode == RIGHT){
    block1.right();
  }
}
