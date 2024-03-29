// Fitxer amb la informació dels Medias de l'App

// Array d'imatges (JPG, PNG, GIF)
PImage[] pic;

// Estableix les imatges de l'App
void setMedias() {
  this.pic = new PImage[23];
  this.pic[0] = loadImage("/fondo1.jpg");
  this.pic[1] = loadImage("meh.png");
  this.pic[2] = loadImage("dead.png");
  this.pic[3] = loadImage("sad.png");
  this.pic[4] = loadImage("laugh.png");
  this.pic[5] = loadImage("tongue.png");
  this.pic[6] = loadImage("profile.png");
  this.pic[7] = loadImage("gradient.jpg");
  this.pic[8] = loadImage("water.jpg");
  this.pic[9] = loadImage("aeroplane.png");
  this.pic[10] =loadImage("divingmask.png");
  this.pic[11] = loadImage("luggage.png");
  this.pic[12] = loadImage("sun.png");
  this.pic[13] = loadImage("swimsuit.png");
  this.pic[14] = loadImage("umbrella.png");
  this.pic[15] = loadImage("volleyball.png");
  this.pic[16] = loadImage("beertin.png");
  this.pic[17] = loadImage("sunglasses.png");
  this.pic[18] = loadImage("tv.png");
  this.pic[19] = loadImage("sandra.png");
  this.pic[20] = loadImage("manu.png");
  this.pic[21] = loadImage("perro.png");
  this.pic[22] = loadImage("negro.jpg");
}



void fileSelected(File selection) {
  if (selection == null) {
    println("No s'ha seleccionat cap fitxer.");
  } else {
    
    // Obtenim la ruta del fitxer seleccionat
    String rutaImatge = selection.getAbsolutePath();
    
    img = loadImage(rutaImatge);  // Actualitzam imatge    
    titol = selection.getName();  // Actualitzam títol
  }
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

void displayrImg(String i, float x, float y, float w, float h){
  PImage img = loadImage(i);
  image(img,x,y,w,h);
}
