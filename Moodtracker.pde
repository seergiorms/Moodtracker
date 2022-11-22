Button b1;
TextField userText, passText;
boolean logged = false;

// Dimensions dels botons

color bgColor = color(255);

void setup() {
  // Dimensions de l'App
  fullScreen();
  setColors();
  setFonts();
  setMedias();
}


void draw() {

  // Dibuixa el fons (blanc)
  background(255);

  switch(pantalla) {
  case CONTRASEÑA:
    dibujaPantallaContraseña();
    break;
  case CONTRASEÑA2:
    dibujaPantallaContraseña2();
    break;
  }

  updateCursor();   // Modifica l'aparença del cursor
}

// En cas de pitjar el ratolí
void mousePressed() {

  if (b1.mouseOverButton() && b1.enabled) {
    pantalla = PANTALLA.CONTRASEÑA2;
  }
}
