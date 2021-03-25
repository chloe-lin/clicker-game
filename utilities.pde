void rectTactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(brown);
    strokeWeight(5);
  } else {
    stroke(cream);
    strokeWeight(5);
  }
  
  rect(x, y, w, h);
}

//void buttonTactile (int x, int y, int w, int h) {
//  if 
//}

//void lineTactile(int x1, x2, y1, y2);
//  if (mouseX > 100 && mouseY > 500 && mouseX < 150 && mouseY < 500) {
   
//  }
