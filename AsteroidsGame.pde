Spaceship booboo = new Spaceship();        
star [] moomoo = new star[1000];
ArrayList <Asteroid> doodoo = new ArrayList <Asteroid>();
public void setup() 
{
  size(600,600);
  background(0);
  for(int i = 0; i<moomoo.length; i++){
    moomoo[i] = new star();
  }
  for(int j = 0; j<30; j++){
    doodoo.add(new Asteroid());
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
  for(int i = 0; i<doodoo.size(); i++){
  doodoo.get(i).move();
  doodoo.get(i).show();
  if(dist(doodoo.get(i).X(), doodoo.get(i).Y(), booboo.X(), booboo.Y())<20){
    doodoo.remove(i);
    }  
  }
}

public void keyPressed(){
 if(key == 'w'){
 booboo.accelerate(0.3);
 }
 if(key == 's'){
 booboo.accelerate(-0.3);
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
