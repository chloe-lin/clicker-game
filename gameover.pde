//hufflepuff
void gameover() {
  background(yellow);
  
  theme.pause();
  gameover.play();
  
  fill(black);
  textSize(50);
  textFont(harryp);
  text("game over!", 400, 200);
  text("high score: "+ highscore, 370, 400);
  
  score = 0;
  lives = 3;
  vx = random(-5, 5);
  vy = random(-5, 5);
 
} //end of void gameover-------------------

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
} //end of gameoverClicks------------------
