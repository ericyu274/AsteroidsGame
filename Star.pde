class star{
  private int x, y, size, col;
  public star(){
    x = (int)(Math.random()*600);
    y = (int)(Math.random()*600);
    size = (int)(Math.random()*4+1);
    col = color(123,34,210);
  }
  public void show(){
    fill(col);
    ellipse(x,y,size,size);
  }
}
