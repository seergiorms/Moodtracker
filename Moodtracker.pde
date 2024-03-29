
boolean logged = false;

// Dimensions dels botons

color bgColor = color(255);

void setup() {
  // Dimensions de l'App
  fullScreen();
  setColors();
  setFonts();
  setMedias();
  setGUI();
  connexioBBDD();
}


void draw() {

  // Dibuixa el fons (blanc)
  background(255);

  switch(pantalla) {
  case CONTRASENA:
    dibujaPantallaContraseNa();
    break;

  case INICIO:
    dibujaPantallaInicio();
    break;

  case INICIO1:
    dibujaPantallaInicio1();
    break;

  case PINES:
    dibujaPantallaPines();
    break;

  case RESUMEN:
    dibujaPantallaResumen();
    break;

  case PERSONAS:
    dibujaPantallaPersonas();
    break;

  case ESTADISTICAS:
    dibujaPantallaEstadisticas();
    break;

  case PERFIL:
    dibujaPantallaPerfil();
    break;

  case AJUSTES:
    dibujaPantallaAjustes();
    break;

  case PERSP:
    dibujaPantallaPersp();
    break;

  case FINAL:
    dibujaPantallaFinal();
    break;

  case DRESUMEN:
    dibujaPantallaDresumen();
    break;

  case SELECCIONARP:
    dibujaPantallaSeleccionarp();
    break;
  }


  updateCursor();
}

boolean comprovaLogin() {
  if ( userText.text.equals("admin") &&
    passText.text.equals("1234")) {
    return true;
  } else {
    return false;
  }
}
