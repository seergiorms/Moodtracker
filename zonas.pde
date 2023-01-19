void Recuadreinici() {
  shapeMode(CENTER);
  pushStyle();
  fill(255);
  noStroke();
  rect(margrecH, margrecV, recuadreWidth, recuadreHeight, 30, 30, 30, 30);
  textFont(getFontAt(0));
  textSize(60);
  fill(getColorAt(6));
  text("Inicio de sesión", margrecH + 70, margrecV + 110);
  textFont(getFontAt(1));
  textSize(25);
  fill(getColorAt(4));
  text("USUARIO:", margusuarioH, margusuarioV+37);
  text("CONTRASEÑA:", margusuarioH, margusuarioV+107);
  popStyle();
}

void FotoPerfil() {
  pushStyle();
  imageMode(CENTER);
  image(getImgAt(6), margrecH + recuadreWidth/2, margrecV + 260, 230, 230);
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

void Bannerinici() {
  pushStyle();
  noStroke();
  fill(255);
  rect(0, 0, banneriWidth, banneriHeight);
  popStyle();
}

void RecuadEmo() {
  pushStyle();
  noStroke();
  fill(255);
  rect(margrecH-25, margrecV+100, recuadreWidth, recuadreHeight - 100, 30, 30, 30, 30);
  textFont(getFontAt(1));
  fill(getColorAt(6));
  textSize(30);
  text("Selecciona cómo te has sentido hoy:", margrecH + 25, margrecV + 170);
  textFont(getFontAt(0));
  textSize(70);
  textAlign(CENTER);
  fill(getColorAt(5));
  text("¿Cómo te sientes hoy?", margrecH-25 + (recuadreWidth/2), margrecV+37);
  popStyle();
}

void recuadEmo2() {
  pushStyle();
  noStroke();
  fill(255);
  rect(margrecH-25, margrecV+100, recuadreWidth, recuadreHeight - 100, 30, 30, 30, 30);
  popStyle();
}

void RecuadEmo1() {
  pushStyle();
  noStroke();
  fill(255);
  rect(margrecH-25, margrecV+100, recuadreWidth, recuadreHeight - 100, 30, 30, 30, 30);
  textFont(getFontAt(1));
  fill(getColorAt(6));
  textSize(30);
  text("Selecciona algunos pines:", margrecH + 25, margrecV + 170);
  textFont(getFontAt(0));
  textSize(70);
  textAlign(CENTER);
  fill(getColorAt(5));
  text("¿Cómo te sientes hoy?", margrecH-25 + (recuadreWidth/2), margrecV+37);
  popStyle();
}

void Personas() {
  pushStyle();
  textFont(getFontAt(0));
  textSize(70);
  fill(getColorAt(5));
  text("Tus conocidos:", banneriWidth + 100, margrecV+37);
  ellipse(banneriWidth + 200, margrecV + 200, 200, 200);
  ellipse(banneriWidth + 450, margrecV + 200, 200, 200);
  ellipse(banneriWidth + 700, margrecV + 200, 200, 200);
  ellipse(banneriWidth + 950, margrecV + 200, 200, 200);

  ellipse(banneriWidth + 200, margrecV + 450, 200, 200);
  ellipse(banneriWidth + 450, margrecV + 450, 200, 200);
  ellipse(banneriWidth + 700, margrecV + 450, 200, 200);
  ellipse(banneriWidth + 950, margrecV + 450, 200, 200);

  ellipse(banneriWidth + 200, margrecV + 700, 200, 200);
  ellipse(banneriWidth + 450, margrecV + 700, 200, 200);
  popStyle();
}
