void pause() {
  //background(purple);
  fill(silver);
  textSize(50);
  textFont(harryp);
  text("pause!", 400, 400);

  theme.pause();
} //end of void pause----------------------

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME;
  }
} //end of pauseClicks---------------------
