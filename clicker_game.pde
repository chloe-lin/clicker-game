//Chloe Lin 
//1-4A
//March 6 2021

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//TARGET VARIABLES----------------
float x, y, d;
float vx, vy; //target velocity 
int score, lives, highscore;

//SOUND VARIABLES
Minim minim; 
AudioPlayer theme, coin, bump, gameover;

//IMAGE VARIABLES
PImage butterbeer;
PImage cauldroncake;
PImage chocolatefrog;
PImage selectedImage; 


//COLOR PALLETTE------------------
color red = #A60013;
color green = #074900;
color blue = #181847;
color yellow = #F9D423;
color gold = #CE9405;
color silver = #E2E9DC;
color bronze = #D49F2C;
color black = #000000;
color white = #FFFFFD;
color grey = #AAB3AB;
color cream = #EDE3B4;
color brown = #40230C;

//slider 
float sliderX;
float size;

PFont harryp;

void setup() { //unexpected token void is almost always missing brace
  size(800, 800); 
  textAlign(CENTER, CENTER);
  
  mode = INTRO;
  
  //target initialization 
  x = width/2; // or width/2
  y = height/2; // or height/2
  d = size;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  //highscore = ;
  
  //MINIM 
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile ("gameover.wav");
  
  //IMAGES
  butterbeer = loadImage("butterbeer.png");
  cauldroncake = loadImage("cauldroncake.png"); 
  chocolatefrog = loadImage("chocolatefrog.png");
  
  selectedImage = butterbeer;
  
  //slider 
  sliderX = 120;
  size = 5;
  
  //font 
  harryp = createFont("HARRYP__.TTF", 70);
  
}//end of setup----------------------

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode Error: Mode is " + mode);
  }
  
}//end of draw------------------------
