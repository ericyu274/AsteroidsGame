class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = (80);
    myCenterX = Math.random()*700;
    myCenterY = Math.random()*700;
    myXspeed = Math.random()*5-3;
    myYspeed = Math.random()*5-3;
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = (int)(Math.random()*7+1);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float Y(){
    return (float)myCenterY;
  }
  public float X(){
    return (float)myCenterX;
  }
}
