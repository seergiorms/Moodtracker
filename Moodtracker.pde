
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
}


void draw() {

  // Dibuixa el fons (blanc)
  background(255);

  switch(pantalla) {
  case CONTRASEÑA:
    dibujaPantallaContraseña();
    break;

  case INICIO:
    dibujaPantallaInicio();
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
