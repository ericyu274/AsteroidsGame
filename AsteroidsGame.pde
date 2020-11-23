Spaceship booboo = new Spaceship();        
star [] moomoo = new star[1000];
public void setup() 
{
  size(600,600);
  background(0);
  for(int i = 0; i<moomoo.length; i++){
    moomoo[i] = new star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<moomoo.length; i++){
  moomoo[i].show();
  }
  booboo.move();
  booboo.show();
}

public void keyPressed(){
 if(key == 'w'){
 booboo.accelerate(0.5);
 }
 if(key == 's'){
 booboo.accelerate(-0.5);
 }
 if(key == 'a'){
 booboo.turn(-10);
 }
 if(key == 'd'){
 booboo.turn(10);
 }
 if(key == 'q'){
 booboo.hyperspace();
 }
}
