Block block1;
ArrayList<Square> allSquares = new ArrayList<Square>();
int timer;
int score;
boolean endGame = false;
void setup(){
  size(400,800);
  block1 = randomBlock();
  timer = 0;
  score = 0;
}

void draw(){
  background(150,150,150);
  block1.show();
  timer++;
  if(timer > 40){
    block1.fall();
    timer = 0;
  }
  if(block1.touchBottom()){
    block1 = randomBlock();
    clearRow();
  }
  for(int i = 0; i < allSquares.size();i ++){
    allSquares.get(i).show();
  }
  lose();
  textAlign(RIGHT);
  text("Score: " + score, 400, 10);
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
  if(keyCode == 32 && endGame){
    loop();
    allSquares = new ArrayList<Square>();
    score = 0;
    block1 = randomBlock();
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

public void clearRow(){
  for(int d = 0; d < 800; d+=40){ 
    ArrayList<Integer> newSquareList = new ArrayList<Integer>();
    int counter = 0;
    for(int c = 0; c < allSquares.size(); c++){
      if(allSquares.get(c).y == d){
        counter++;
        newSquareList.add(c);
      }
    }
    if(counter >= 10){
      for(int delete = 0; delete < newSquareList.size(); delete++){
        allSquares.remove(newSquareList.get(delete)-delete);
      }
      for(int fall = 0; fall < allSquares.size(); fall++){
        if(allSquares.get(fall).y < d){
          allSquares.get(fall).fall();
        }  
      }
      score += 1000;
    }
  }
}

public void lose(){
  for(int all = 0; all < allSquares.size() - 4; all++){
    if(allSquares.get(all).y == 0){
      noLoop();
      endGame = true;
      textAlign(CENTER);
      text("Press Space to Restart", 200, 400);
      
    }
  }
}
