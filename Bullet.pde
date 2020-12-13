class Shoot extends Floater{
 private double dRadians;
  public Shoot(Spaceship theShip){
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    myXspeed = theShip.myXspeed + Math.cos(dRadians);
    myYspeed = theShip.myYspeed + Math.sin(dRadians);
    myPointDirection = theShip.myPointDirection;
    dRadians = theShip.myPointDirection*(Math.PI/180);
    myColor = 255;
    accelerate(8);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  
  public float Y(){return (float)myCenterY;}
  public float X(){return (float)myCenterX;}
  public float direction(){return (float)myPointDirection;}
}
