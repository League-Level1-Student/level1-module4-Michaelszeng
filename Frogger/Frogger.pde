Car car1 = new Car(100, 400, 100, 9);
Car car2 = new Car(400, 300, 50, 8);
Car car3 = new Car(200, 200, 75, 6);
Car car4 = new Car(600, 100, 50, 10);
Car car5 = new Car(700, 500, 100, 8);
Car car6 = new Car(500, 600, 75, 7);
public class Car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  void display() 
{
      fill(0,255,0);
      rect(carX , carY, carSize, 100);
}
  void moveLeft(){
    carX = carX-carSpeed;
    if (carX<-50) {
      carX = 850;
    }
  }
  void moveRight(){
    carX = carX+carSpeed;
    if (carX>850) {
      carX = -50;
    }
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getSize() {
    return carSize;
  }
    Car(int carX, int carY, int carSize, int carSpeed) {
      this.carX=carX;
      this.carY=carY;
      this.carSize=carSize;
      this.carSpeed=carSpeed;
    }
  
}
int x = 400;
int y = 25;
boolean canMove = true;
int speed = 50;
void setup() {
  size(800, 800);
}   
void draw(){
  background(175, 230, 240);
  fill(175, 230, 150);
  ellipse(x, y, 50, 50);
  car1.moveLeft();
  car1.display();
  car2.moveLeft();
  car2.display();
  car3.moveRight();
  car3.display();
  car4.moveLeft();
  car4.display();
  car5.moveRight();
  car5.display();
  car6.moveRight();
  car6.display();
  if(intersects(car1)==true) {
    x=400;
    y=25;
  }
  if(intersects(car2)==true) {
    x=400;
    y=25;
  }
  if(intersects(car3)==true) {
    x=400;
    y=25;
  }
  if(intersects(car4)==true) {
    x=400;
    y=25;
  }
  if(intersects(car5)==true) {
    x=400;
    y=25;
  }
  if(intersects(car6)==true) {
    x=400;
    y=25;
  }

  if (x>825) {
    x=-25;
  }
  else if (x<-25) {
    x=825;
  }
}
void keyPressed()
{
  if (canMove==true){
  if(key == CODED){
            if(keyCode == UP)
            {
                  y=y-speed;
            }
            else if(keyCode == DOWN)
            {
                  y=y+speed;
            }
            else if(keyCode == RIGHT)
            {
                  x=x+speed;
            }
            else if(keyCode == LEFT)
            {
                  x=x-speed;
            }
      }
  }
  canMove = false;
}
void keyReleased(){
  canMove = true;
}
void exitCanvas(){
  if (x<39) {
    x=39;
  }
  if (y<39) {
    y=39;
  }
  if (x>760) {
    x=760;
  }
  if (y>760) {
    y=760;
  }
}
  boolean intersects(Car car) {
      if ((y > car.getY() && y < car.getY()+100) && (x > car.getX() && x < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
  }