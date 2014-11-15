//Uses CJam Library to connect the server to jam all the sketches of connected clients.
//https://github.com/transfluxus/CJam

import client.CJam;
int barWidth = 20;
int lastBar = -1;

void setup() {
  CJam.initCJam(this, "192.168.2.69");
  colorMode(HSB, width, 100, width);
  noStroke();
  background(0);
}

void draw() {     
  float x = random(0, width);
  float y = random(0, height);
  int whichBar = (int)x / barWidth;
  if (whichBar != lastBar) {
    int barX = whichBar * barWidth;
    fill(barX, 100, (int)y);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
}
