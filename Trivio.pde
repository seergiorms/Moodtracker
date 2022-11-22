void Recuadreinici() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  noStroke();
  rect(margrecH, margrecV, recuadreWidth, recuadreHeight, 30, 30, 30, 30);
  popStyle();
  textFont(getFontAt(0));
  textSize(60);
  fill(getColorAt(4));
  text("Inicio de sesión", margrecH + 70, margrecV + 110);
}

void FotoPerfil() {
  pushStyle();
  imageMode(CENTER);
  image(getImgAt(6), margrecH + recuadreWidth/2, margrecV + 260, 190, 190);
  popStyle();
}

void Usuario() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  stroke(0);
  rect(margusuarioH, margusuarioV, usuarioWidth, usuarioHeight, 30, 30, 30, 30);
  popStyle();
}

void Usuario2() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  stroke(0);
  rect(margusuarioH, margusuarioV, usuarioWidth/2, usuarioHeight, 30, 30, 30, 30);
  popStyle();
}

void Nombre() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  stroke(0);
  rect(margusuarioH, margusuarioV, nombreWidth, usuarioHeight, 30, 30, 30, 30);
  popStyle();
}

void Contraseña() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  stroke(0);
  rect(margusuarioH, margusuarioV + 70, usuarioWidth, usuarioHeight, 30, 30, 30, 30);
  popStyle();
}
