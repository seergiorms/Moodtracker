enum PANTALLA {
  CONTRASENA, INICIO, INICIO1, RESUMEN, PERSONAS, ESTADISTICAS, PERFIL, AJUSTES, PINES, PERSP, FINAL, DRESUMEN, SELECCIONARP
};

// Pantalla actual
PANTALLA pantalla = PANTALLA.INICIO;

void dibujaPantallaContraseNa() {
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
  RecuadFecha();
  displayButtonsMenu();
  enableButtonsMenu();
  //initFecha();
  f.display();
  popStyle();
}

void dibujaPantallaInicio1() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  RecuadEmo();
  displayButtonsMenu();
  enableButtonsMenu();
  displayEmociones();
  displayButtonsInicio();
  imageMode(CENTER);
  displayImg(4, margrecH - 50 + (recuadreWidth/5), margrecV+280, 100, 100);
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
  RecuadEmo1();
  displayButtonsMenu();
  enableButtonsMenu();
  initButtonsPines();
  displayButtonsPines();
  imageMode(CENTER);
  displayImg(9, margrecH - 50 + (recuadreWidth/5), margrecV+280, 70, 70);
  displayImg(10, margrecH - 50 + (recuadreWidth/5)+135, margrecV+280, 70, 70);
  displayImg(11, margrecH - 50 + (recuadreWidth/5)+265, margrecV+280, 70, 70);
  displayImg(10, margrecH - 50 + (recuadreWidth/5)+395, margrecV+280, 70, 70);
  displayImg(13, margrecH - 50 + (recuadreWidth/5)+525, margrecV+280, 70, 70);
  displayImg(14, margrecH - 50 + (recuadreWidth/5), margrecV+280+135, 70, 70);
  displayImg(15, margrecH - 50 + (recuadreWidth/5)+135, margrecV+280+135, 70, 70);
  displayImg(16, margrecH - 50 + (recuadreWidth/5)+260, margrecV+280+135, 70, 70);
  displayImg(17, margrecH - 50 + (recuadreWidth/5)+395, margrecV+280+135, 70, 70);
  displayImg(18, margrecH - 50 + (recuadreWidth/5)+525, margrecV+280+130, 65, 65);
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
  displayButtonsPersonas();
  enableButtonsPersonas();
  imageMode(CENTER);
  personas();
  displayImg(19, ellipseX, ellipseY, ellipseW, ellipseH);
  displayImg(20, ellipseX1, ellipseY, ellipseW, ellipseH);
  displayImg(21, ellipseX2, ellipseY, ellipseW, ellipseH);
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

void dibujaPantallaPersp() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  displayButtonsMenu();
  enableButtonsMenu();
  recuadEmo2();
  initButtonsPersp();
  displayButtonsPersp();
  imageMode(CENTER);
  displayImg(19, margrecH - 50 + (recuadreWidth/5), margrecV+280, 70, 70);
  displayImg(20, margrecH - 50 + (recuadreWidth/5)+135, margrecV+280, 70, 70);
  displayImg(21, margrecH - 50 + (recuadreWidth/5)+265, margrecV+280, 70, 70);
  popStyle();
}

void dibujaPantallaFinal() {
  pushStyle();
  displayImg(7, 0, 0, width, height);
  Bannerinici();
  recuadFinal();
  displayButtonsMenu();
  enableButtonsMenu();
  displayButtonsFinal();
  popStyle();
}

void dibujaPantallaDresumen() {
  pushStyle();
  dibujaPantallaResumen();
  tint(255, 127);
  displayImg(22, banneriWidth, 0, width - banneriWidth, height);
  recuadDresumen();
  displayButtonsDresumen();
  popStyle();
}

void dibujaPantallaSeleccionarp() {
  pushStyle();
  dibujaPantallaPersonas();
  tint(255, 127);
  displayImg(22, banneriWidth, 0, width - banneriWidth, height);
  recuadAviso();
  displayButtonsSeleccionarp();
  popStyle();
}

void dibujaPantallaEliminarp() {
  pushStyle();
  dibujaPantallaPersonas();
  tint(255, 127);
  displayImg(19, ellipseX, ellipseY, ellipseW, ellipseH);
  displayImg(20, ellipseX1, ellipseY, ellipseW, ellipseH);
  displayImg(21, ellipseX2, ellipseY, ellipseW, ellipseH);
}
