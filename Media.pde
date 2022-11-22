// Fitxer amb la informació dels Medias de l'App

// URL de la carpeta on hi ha les imatges
String URL_IMGS = "imgs/";

// Array d'imatges (JPG, PNG, GIF)
PShape[] lgo;
PImage[] pic;

// Estableix les imatges de l'App
void setMedias() {
  this.pic = new PImage[7];
  this.pic[0] = loadImage("/Fondo1.png");
  this.pic[1] = loadImage("meh.png");
  this.pic[2] = loadImage("dead.png");
  this.pic[3] = loadImage("sad.png");
  this.pic[4] = loadImage("laugh.png");
  this.pic[5] = loadImage("tongue.png");
  this.pic[6] = loadImage("profile.jpg");
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
