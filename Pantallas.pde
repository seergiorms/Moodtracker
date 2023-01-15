enum PANTALLA {
  CONTRASEÑA, INICIO, RESUMEN, PERSONAS, ESTADISTICAS, PERFIL, AJUSTES, PINES
};

// Pantalla actual
PANTALLA pantalla = PANTALLA.CONTRASEÑA;

void dibujaPantallaContraseña() {
  pushStyle();
  displayImg(8, 0, 0, width, height);
  Recuadreinici();
  FotoPerfil();
  displayButtonsIniciales();
  disableButtons();
  enableButtonsIniciales();
  updateCursor();
  displayTextField1();
  displayTextField2();
  popStyle();
}

void dibujaPantallaInicio() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  RecuadEmo();
  displayButtonsMenu();
  enableButtonsMenu();
  displayButtonsInicio();
  enableButtonsInicio();
  popStyle();
}

void dibujaPantallaPines() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  RecuadEmo1();
  displayButtonsMenu();
  enableButtonsMenu();
  displayButtonsInicio();
  enableButtonsInicio();
  RecuadEmo1();
  popStyle();
}

void dibujaPantallaResumen() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  displayButtonsMenu();
  enableButtonsMenu();
  displayCalendario();
  popStyle();
}

void dibujaPantallaPersonas() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  displayButtonsMenu();
  enableButtonsMenu();
  popStyle();
}
void dibujaPantallaEstadisticas() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  displayButtonsMenu();
  enableButtonsMenu();
  popStyle();
}

void dibujaPantallaPerfil() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  displayButtonsMenu();
  enableButtonsMenu();
  popStyle();
}

void dibujaPantallaAjustes() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  displayButtonsMenu();
  enableButtonsMenu();
  popStyle();
}
