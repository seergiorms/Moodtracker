// Fitxer amb la informació dels Medias de l'App

// Array d'imatges (JPG, PNG, GIF)
PImage[] pic;

// Estableix les imatges de l'App
void setMedias() {
  this.pic = new PImage[11];
  this.pic[0] = loadImage("/fondo1.jpg");
  this.pic[1] = loadImage("meh.png");
  this.pic[2] = loadImage("dead.png");
  this.pic[3] = loadImage("sad.png");
  this.pic[4] = loadImage("laugh.png");
  this.pic[5] = loadImage("tongue.png");
  this.pic[6] = loadImage("profile.png");
  this.pic[7] = loadImage("gradient.png");
  this.pic[8] = loadImage("water.jpg");
  this.pic[9] = loadImage("amarillo.png");
  this.pic[10] = loadImage("negro.jpg");
}

// Getter del número d'imatges
int getNumImatges() {
  return this.pic.length;
}

// Getter de la imatge i-èssima
PImage getImgAt(int i) {
  return this.pic[i];
}


// Dibuixa la imatge i-èssima
void displayImg(int i, float x, float y, float w, float h) {
  image(getImgAt(i), x, y, w, h);
}
