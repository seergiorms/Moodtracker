enum PANTALLA {
  CONTRASEÑA, CONTRASEÑA2
};

// Pantalla actual
PANTALLA pantalla = PANTALLA.CONTRASEÑA;

void dibujaPantallaContraseña() {
  b1 = new Button("Hecho", margrecH + recuadreWidth/2+ 50, height-margrecV-126, buttonW, buttonH);
  displayImg(0, 0, 0, width, height);
  Recuadreinici();
  FotoPerfil();
  b1.display();
  Usuario();
  Contraseña();
  updateCursor();
  userText = new TextField(260, 103, 200, 35);
  passText = new TextField(260, 153, 200, 35);
}

void dibujaPantallaContraseña2() {
  b1 = new Button("Hecho", margrecH + recuadreWidth/2+ 50, height-margrecV-126, buttonW, buttonH);
  displayImg(0, 0, 0, width, height);
  Recuadreinici();
  b1.display();
  Nombre();
  Contraseña();
  updateCursor();
  userText = new TextField(260, 103, 200, 35);
  passText = new TextField(260, 153, 200, 35);
}
