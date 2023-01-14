color[] colors;

void setColors() {
  this.colors = new color[7];
  this.colors[0] = color(#F2AE49);//amarillo
  this.colors[1] = color(#F27A57);//naranja
  this.colors[2] = color(#F25C78);//rosa
  this.colors[3] = color(#7D6ED0);//lila
  this.colors[4] = color(#51CFC0);//azul
  this.colors[5] = color(255);    //blanco
  this.colors[6] = color(0);      //negro
}


int getNumColors() {
  return this.colors.length;
}


color getFirstColor() {
  return  this.colors[0];
}


color getSecondColor() {
  return  this.colors[1];
}


color getThirdColor() {
  return  this.colors[2];
}

color getColorAt(int i) {
  return this.colors[i];
}

void displayColors(float x, float y, float w) {
  pushStyle();
  //Llegenda
  fill(0);
  textAlign(LEFT);
  textSize(36);
  text("Colors:", x, y-10);

  float wc = w / getNumColors();
  for (int i=0; i<getNumColors(); i++) {
    fill(getColorAt(i));
    stroke(0);
    strokeWeight(3);
    rect(x + i*wc, y, wc, wc);
  }
  popStyle();
}
