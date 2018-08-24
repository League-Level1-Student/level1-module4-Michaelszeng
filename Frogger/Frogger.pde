int x = 400;
int y = 400;
void setup() {
  size(800, 800);
}
void draw(){
  background(175, 230, 240);
  fill(175, 230, 150);
  ellipse(x, y, 75, 75);
}
void keyPressed()
{
  if(key == CODED){
            if(keyCode == UP)
            {
                  y=y-5;
            }
            else if(keyCode == DOWN)
            {
                  y=y+5;
            }
            else if(keyCode == RIGHT)
            {
                  x=x+5;
            }
            else if(keyCode == LEFT)
            {
                  x=x-5;
            }
      }
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