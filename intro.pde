//gryffindor
void intro() {
  theme.play();
  gameover.pause();
  background(red);
  
  strokeWeight(1);
  
  fill(brown);
  stroke(gold);
  strokeWeight(3);
  
  //screen
  textSize(10);
  textFont(harryp);
  text("clicker game!", 400, 300);
  
  //start button 
  fill(red);
  rectTactile(150, 450, 200, 100);
  rect(150, 450, 200, 100);
  fill(gold);
  textSize(10);
  textFont(harryp);
  text("start", 250, 500);
  
  //options button 
  fill(red);
  rectTactile(450, 450, 200, 100);
  rect(450, 450, 200, 100);
  fill(gold);
  textSize(10);
  textFont(harryp);
  text("options", 550, 500);
} //end of void intro-----------------------

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 450 && mouseY < 550) {
    mode = OPTIONS;
  }
} //end of introClicks----------------------
