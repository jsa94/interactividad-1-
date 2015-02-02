float posX;
float posY;
float posA;
float posZ;
float posB;
float posC;
float speedX;
float speedY;

void setup() {
size(400, 400);
rectMode(CENTER);
posX = width/2;
posY = height/2;
posA = 350;
posZ = 50;
posB = 300;
posC = 350;
speedX = (int)random(1, 4);
speedY = (int)random(1, 4);
}
void draw() {
background(0);
fill(255);
rect(posA, posZ, 80, 10);
ellipse(posX, posY, 10, 10);

 if (keyPressed) {

if (keyCode  == RIGHT) {
          posA +=5;  
          }
if (keyCode  == LEFT) {
          posA -=5;  
          }
          }
rect(posB, posC, 80, 10);

if (keyPressed) {
  if (key== 'x'|| key == 'X') {
          posB+=5;  
          }
if (key== 'z'|| key == 'Z') {
          posB -=5;  
          }
          }
if (posX>width) {
speedX = -1*speedX;
posX = width;
} else if (posX<0) {
speedX = -1*speedX;
posX = 0;
} else if (posY<0) {
speedY = -1*speedY;
posY = 0;
} else if (posY>height) {
speedY = -1*speedY;
posY = height;
}
if (posX > posB-30 && posX < posB+30
&& posY > posC-5
&& posY < posC+5) {
speedX = speedX;
speedY = -1*speedY;
}
if (posY >0 && posY <50 && posX > posA-30 && posX < posA+30
) {
speedX = speedX;
speedY = -1*speedY;
}

 println("posY es igual: "+posY);
 println("posX es igual: "+posX);
 println("posA es igual: "+posA);
 println("posZ es igual: "+posZ);
 
posX = posX + speedX;
posY = posY + speedY;
}
