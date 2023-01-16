// cuando pulsas el boton de seleccionar en la pantalla personas, en vez de enviarte a la pantalla que se supone que te tiene que llevar,
// te lleva a la pantalla de inicio, que casualmente es la pantalla a la que te llevan el resto de botones con el mismo tipo de display, display1
// aunque a xisco sí que le va bien el botón de siguiente de la pantalla inicio :)
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
