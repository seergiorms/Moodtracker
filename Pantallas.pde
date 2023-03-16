enum PANTALLA {
  CONTRASEÑA, INICIO, RESUMEN, PERSONAS, ESTADISTICAS, PERFIL, AJUSTES, PINES,
};

// Pantalla actual
PANTALLA pantalla = PANTALLA.INICIO;

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
  displayEmociones();
  imageMode(CENTER);
  displayImg(4, margrecH - 50 + (recuadreWidth/5), margrecV+280, 100,100);
  displayImg(5, margrecH - 50 + (recuadreWidth/5)+135, margrecV+280, 100, 100);
  displayImg(1, margrecH - 50 + (recuadreWidth/5)+265, margrecV+280, 100, 100);
  displayImg(3, margrecH - 50 + (recuadreWidth/5)+395, margrecV+280, 100, 100);
  displayImg(2, margrecH - 50 + (recuadreWidth/5)+525, margrecV+280, 100, 100);
  popStyle();
}

void dibujaPantallaPines() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
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
  recuadEmo2();
  displayButtonsMenu();
  enableButtonsMenu();
  enableCalendari();
  displayCalendari();
  popStyle();
}

void dibujaPantallaPersonas() {
  pushStyle();
  background(getColorAt(0));
  Bannerinici();
  displayButtonsMenu();
  enableButtonsMenu();
  Personas();
  displayButtonsPersonas();
  enableButtonsPersonas();
  popStyle();
}

void dibujaPantallaEstadisticas() {
  pushStyle();
  background(getColorAt(4));
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
