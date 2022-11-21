// Fitxer amb la informació dels Medias de l'App

// URL de la carpeta on hi ha les imatges
String URL_IMGS = "imgs/";

// Array d'imatges (JPG, PNG, GIF)
PShape[] lgo;
PImage[] pic;

// Estableix les imatges de l'App
void setMedias() {
  this.pic = new PImage[1];
  this.pic[0] = loadImage("/Fondo1.png");

  this.lgo = new PShape[13];
  this.lgo[0] = loadShape("/Sprite-círculoamarillo.svg");
  this.lgo[1] = loadShape("/Sprite-círculonaranja.svg");
  this.lgo[2] = loadShape("/Sprite-círculorosa.svg");
  this.lgo[3] = loadShape("/Sprite-círculolila.svg");
  this.lgo[4] = loadShape("/Sprite-círculoazul.svg");
  this.lgo[5] = loadShape("/Sprite-círculoamarillog.svg");
  this.lgo[6] = loadShape("/Sprite-círculonaranjag.svg");
  this.lgo[7] = loadShape("/Sprite-círculorosag.svg");
  this.lgo[8] = loadShape("/Sprite-círculolilag.svg");
  this.lgo[9] = loadShape("/Sprite-círculoazulg.svg");
  this.lgo[10] = loadShape("/FotoPerfil.svg");
  this.lgo[11] = loadShape("/Botoncuad.svg");
  this.lgo[12] = loadShape("/Botoncuad1.svg");
}

// Getter del número d'imatges
int getNumImatges() {
  return this.lgo.length;
}

// Getter de la imatge i-èssima
PShape getImgAt(int i) {
  return this.lgo[i];
}

PImage getPicAt(int i) {
  return this.pic[i];
}


// Dibuixa la imatge i-èssima
void displayImg(int i, float x, float y, float w, float h) {
  shape(getImgAt(i), x, y, w, h);
}

void displayPic(int i, float x, float y, float w, float h) {
  image(getPicAt(i), x, y, w, h);
}
