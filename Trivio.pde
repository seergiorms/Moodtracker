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

void FotoPerfil(){
  shapeMode(CENTER);
  pushStyle();
  shape(getImgAt(10), margrecH + recuadreWidth/2, margrecV + 260, 165, 165);
  popStyle();
}

void Usuario() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  stroke(0);
  rect(margusuarioH, margusuarioV, usuarioWidth, usuarioHeight, 30, 30, 30, 30);
  popStyle();
   textFont(getFontAt(1));
  textSize(20);
  fill(100);
  text("Usuario", margusuarioH + 20, margusuarioV + 33);
}

void Contraseña() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  stroke(0);
  rect(margusuarioH, margusuarioV + 70, usuarioWidth, usuarioHeight, 30, 30, 30, 30);
  popStyle();
   textFont(getFontAt(1));
  textSize(20);
  fill(100);
  text("Contraseña", margusuarioH + 20, margusuarioV + 103);
}
