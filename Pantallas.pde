void dibujaPantallaInicio(){
   b1 = new Button("Siguiente", margrecH + recuadreWidth/2+ 50, height-margrecV-126, buttonW, buttonH);
   displayPic(0, 0, 0, width, height);
  Recuadreinici();
  FotoPerfil();
  b1.display();
  Usuario();
  Contraseña();

  updateCursor();
}
