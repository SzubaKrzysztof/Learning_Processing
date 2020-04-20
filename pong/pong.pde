
int screenX = 600;
int screenY = 450;

//Paddle 1
int pad1_sizeX = 10;
int pad1_sizeY = 50;
int pad1X = screenX-30;
int pad1Y = screenY/2-25;

//Paddle 
color pad_color = #559144;
int pad_vel = 5;

//Paddle 2
int pad2_sizeX = 10;
int pad2_sizeY = 50;
int pad2X = screenX-580;
int pad2Y = screenY/2-25;
color pad2_color = #FFFFFF;


float ball_posX = screenX/2;
float ball_posY = screenY/2;
float ball_velX = 3;
float ball_velY = 2;
int ball_size = 20;
color ball_color = #FFFFFF;


boolean w_pressed = false;
boolean s_pressed = false;
boolean space_pressed = false;
boolean up_pressed = false;
boolean down_pressed = false;
boolean lose = false;

color text_color = #FFFFFF;



void setup(){
size(600,450);

}

void draw(){

if(w_pressed == true){
pad2Y -= pad_vel;
}
if(s_pressed == true){
pad2Y += pad_vel;
}
if(up_pressed == true){
pad1Y -= pad_vel;
}
if(down_pressed == true){
pad1Y += pad_vel;
}
if(pad1Y < 0){
pad1Y = 0;
}
if(pad1Y > screenY - pad2_sizeY){
pad1Y = screenY - pad2_sizeY;
}
if(pad2Y < 0){
pad2Y = 0;
}
if(pad2Y > screenY - pad2_sizeY){
pad2Y = screenY - pad2_sizeY;
}


if(key == ENTER ){
lose = false;
}


if(lose == false){
ball_posX = ball_posX+ball_velX;
ball_posY = ball_posY+ball_velY;
}


if ((ball_posX > pad1X - ball_size/2) && (ball_posX < pad1X + pad1_sizeX + ball_size/2) && (ball_posY > pad1Y - ball_size/2) && (ball_posY < pad1Y + pad1_sizeY + ball_size/2)){
if(( ball_velX <= 6)&&(ball_velX >= -6)){
ball_velX = -(ball_velX + ball_velX * 0.1);
}
else{
ball_velX = -ball_velX;
}
}

if ((ball_posX < pad2X + pad2_sizeX + ball_size/2) && (ball_posX > pad2X - ball_size/2) && (ball_posY > pad2Y - ball_size/2) && (ball_posY < pad2Y + pad2_sizeY + ball_size/2)){
if(( ball_velX <= 6)&&(ball_velX >= -6)){
ball_velX = -(ball_velX + ball_velX * 0.1);
}
else{
ball_velX = -ball_velX;
}
}

if((ball_posY > 440)||(ball_posY < 10)){
ball_velY = -ball_velY;
}

if((ball_posX < 0)||(ball_posX > screenX-ball_size/2)){
ball_posX = screenX/2;
ball_posY = screenY/2;
ball_velX = 3;
ball_velY = 2;
lose = true;

}

//Visual
background(#000000);
fill(pad_color);
noStroke();
rect(pad1X,pad1Y,pad1_sizeX,pad1_sizeY);
fill(pad2_color);
rect(pad2X,pad2Y,pad2_sizeX,pad2_sizeY);
fill(ball_color);
ellipse(ball_posX,ball_posY,ball_size,ball_size);

}

void keyPressed(){
if(key == 'w'){
w_pressed = true;
}
if(key == 's'){
s_pressed = true;
}
if(keyCode == UP){
up_pressed = true;
}
if(keyCode == DOWN){
down_pressed = true;
}
}

void keyReleased(){
if(key == 'w'){
w_pressed = false;
}
if(key == 's'){
s_pressed = false;
}
if(keyCode == UP){
up_pressed = false;
}
if(keyCode == DOWN){
down_pressed = false;
}
}
