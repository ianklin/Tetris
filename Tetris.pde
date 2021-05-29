Block block1;
ArrayList<Square> allSquares = new ArrayList<Square>();
int timer;
void setup(){
  size(400,800);
  block1 = randomBlock();
  timer = 0;
}

void draw(){
  background(150,150,150);
  block1.show();
  timer++;
  if(timer > 50){
    block1.fall();
    timer = 0;
  }
  if(block1.touchBottom()){
    block1 = randomBlock();
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
  if(keyCode == UP){
    block1.addRotate();
  }
}

public Block randomBlock(){
  int randint = floor(random(0,7));
  switch(randint){
    case 0:
      return new IBlock();
    case 1:
      return new JBlock();
    case 2:
      return new LBlock();
    case 3: 
      return new OBlock();
    case 4:
      return new SBlock();
    case 5: 
      return new TBlock();
    default:
      return new ZBlock();
  }
}
