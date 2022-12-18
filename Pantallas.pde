enum PANTALLA {
  CONTRASEÑA, INICIO
};

// Pantalla actual
PANTALLA pantalla = PANTALLA.CONTRASEÑA;

void dibujaPantallaContraseña() {
 pushStyle();
  displayImg(0, 0, 0, width, height);
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
  
  popStyle();
}
