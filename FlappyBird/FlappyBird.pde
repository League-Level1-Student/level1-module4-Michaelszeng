int x = 250;
int pipex = 500;
float y = 250;
float v = 0;
float gravity = 0.25;
int pipeHeight1 = (int) random(0, 300);
int pipeHeight2 = 500-pipeHeight1-200;
int score = 0;
void setup() {
size(500, 500);
}
void draw() {
v+=gravity;
y+=v;
pipex-=5;
if (x>pipex-20 && x<pipex+60 && y<pipeHeight1+22) {
  fill(180, 21, 21);
  rect(0, 0, 499, 499);
  fill(255,255,255);
  textSize(50);
  text("You LOSE!", 135, 260);
  //textSize(25);
  x=0;
  //text("Score: "+score, 20, 40);
  v=0;
  gravity=0;
  y=0;
  pipex=0;
}
else if (x==pipex-20 && x<pipex+60 && y>pipeHeight1+178){
  fill(180, 21, 21);
  rect(0, 0, 499, 499);
  fill(255, 255, 255);
  textSize(50);
  text("You LOSE!", 135, 260);
  //textSize(25);
  x=0;
  //text("Score: "+score, 20, 40);
  v=0;
  gravity=0;
  y=0;
  pipex=0;
}
else {
background(135, 206, 250);
fill(0, 0, 0);
text("Score: "+score, 20, 20);
stroke(0, 0, 0);
fill(255, 237, 111);
ellipse(x, y, 50, 50);
fill(100, 235, 51);
rect(pipex, -1, 40, pipeHeight1);
rect(pipex, pipeHeight1+200, 40, pipeHeight2+1);
if (pipex<0) {
  pipex=500;
  pipeHeight1 = (int) random(100, 300);
  pipeHeight2 = 500-pipeHeight1-200;
}
if (x>pipex-20 && x<pipex+60 && y<pipeHeight1+22) {
  fill(180, 21, 21);
  rect(0, 0, 500, 500);
}
else if (x==pipex-20 && x<pipex+60 && y>pipeHeight1+178){
  fill(1280, 21, 21);
  rect(0, 0, 500, 500);
}
}
if (x==pipex) {
  score++;
}
}
void mousePressed() {
  v=-7;
}