//slytherin
void game() {
  background(green);
  
  theme.play();
  
  //display target 
  image(selectedImage, x, y, size, size);
  
  //pause button
  stroke(brown);
  fill(silver);
  circle(100, 100, 100);
  fill(black);
  textSize(7);
  textFont(harryp);
  text("pause", 100, 95);
  
  //score and lives
  fill(silver);
  textSize(7);
  textFont(harryp);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  //moving code
  x = x + vx; //v = velocity
  y = y + vy;
  
  //bouncing
  if (x < 0+d/2 || x > width-size) {
    vx = vx * -1;
  }
  if (y < 0+d/2 || y > height-size) {
    vy = vy * -1; 
  }
  
} //end of void game----------------------

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < size) {
    score = score + 1;
    if (score > highscore)
  { highscore = score;
  } 
    coin.rewind();
    coin.play();
    vx = vx * 1.1;
    vy = vy * 1.1;
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  } else {
    lives = lives - 1; 
    bump.rewind();
    bump.play();
  }
  
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  }
  if (lives == 0) mode = GAMEOVER;
} //end of gameClicks---------------------
