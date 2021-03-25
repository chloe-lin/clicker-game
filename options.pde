//ravenclaw
void options() {
  background(blue); 
  fill(bronze);
  textSize(30);
  textFont(harryp);
  text("options!", 400, 100);
  
  //first option (butterbeer)
  fill(grey);
  rectTactile(150, 250, 120, 120);
  stroke(brown);
  textSize(30);
  fill(bronze);
  image(butterbeer, 155, 255, 115, 115);
  text("butterbeer!", 210, 395);
  
  //second option (cauldroncake)
  fill(grey);
  rectTactile(350, 250, 120, 120);
  stroke(brown);
  textSize(30);
  fill(bronze);
  image(cauldroncake, 355, 255, 115, 115);
  text("cauldron cake!", 410, 395);
  
  //third option (butterbeer)
  fill(grey);
  rectTactile(550, 250, 120, 120);
  stroke(brown);
  textSize(30);
  fill(bronze);
  image(chocolatefrog, 555, 255, 115, 115);
  text("chocolate frog!", 620, 395);
  
  //slider 
  fill(white);
  //lineTactile(100, 500, 150, 500);
  line(100, 500, 250, 500);
  fill(bronze);
  circle(sliderX, 500, 30);
  
  //indicator 
  fill(white);
  //rectTactile(350, 500, 115, 115);
  //rect(350, 500, size, size);
  image(selectedImage, 350, 500, size, size);
  
  //ok button 
  fill(bronze);
  //buttonTactile();
  rectTactile(570, 500, 150, 100);
  rect(570, 500, 150, 100);
  textSize(30);
  textFont(harryp);
  fill(blue);
  text("ok", 650, 550);
    
} //end of void options----------------------------

void mouseDragged() {
  if (mouseY > 100 && pmouseY > 100) {
    size = map(sliderX, 100, 250, 80, 200);
  }
  //change thickness
  controlSlider();
  
} //end of mouseDragged------------------------------

void controlSlider() {
  if (mouseX > 100 && mouseX < 250 && mouseY > 500 && mouseY < 510) {
    sliderX = mouseX; 
  }
} //end of controlSlider-----------------------------


void optionsClicks() {
  //change indicator photo
  if(mouseX > 150 && mouseX < 265 && mouseY > 250 && mouseY < 365) {
    selectedImage = butterbeer;
  }
  
  if(mouseX > 350 && mouseX < 465 && mouseY > 250 && mouseY < 365) {
    selectedImage = cauldroncake;
  }
  
  if(mouseX > 550 && mouseX < 665 && mouseY > 250 && mouseY < 365) {
     selectedImage = chocolatefrog; 
  }
  
  if (mouseX > 570 && mouseX < 720 && mouseY > 500 && mouseY < 600) {
    mode = INTRO;
  }
} //end of optionsClick------------------------
