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

void RecuadFecha() {
  pushStyle();
  noStroke();
  fill(255);
  rect(margrecH-25, margrecV+100, recuadreWidth, recuadreHeight - 100, 30, 30, 30, 30);
  textFont(getFontAt(1));
  fill(getColorAt(6));
  textSize(30);
  text("Selecciona la fecha actual:", margrecH + 25, margrecV + 170);
  textFont(getFontAt(0));
  textSize(70);
  textAlign(CENTER);
  fill(getColorAt(5));
  text("¿Cómo te sientes hoy?", margrecH-25 + (recuadreWidth/2), margrecV+37);
  fill(255);
  stroke(0);
  rect(margrecH + 25, margrecV + 800, 200, 50, 5);
  fill(0);
  textAlign(LEFT);
  textSize(24);
  text(dataCalendari, 190, 45);
  popStyle();
}

void recuadEmo2() {
  pushStyle();
  noStroke();
  fill(255);
  rect(margrecH-25, margrecV+100, recuadreWidth, recuadreHeight - 100, 30, 30, 30, 30);
  textFont(getFontAt(1));
  fill(getColorAt(6));
  textSize(30);
  text("Selecciona las personas con las", margrecH + 25, margrecV + 170);
  text("que has interactuado hoy:", margrecH + 25, margrecV + 200);
  textFont(getFontAt(0));
  textSize(70);
  textAlign(CENTER);
  fill(getColorAt(5));
  text("¿Cómo te sientes hoy?", margrecH-25 + (recuadreWidth/2), margrecV+37);
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

void recuadFinal() {
  pushStyle();
  noStroke();
  fill(255);
  rect(margrecH-25, margrecV+100, recuadreWidth, recuadreHeight - 100, 30, 30, 30, 30);
  textFont(getFontAt(0));
  textSize(70);
  textAlign(CENTER);
  fill(getColorAt(5));
  text("Se ha registrado tu dia", margrecH-25 + (recuadreWidth/2), margrecV+37);
  textFont(getFontAt(1));
  textSize(100);
  fill(getColorAt(6));
  text("Hecho!", margrecH + (recuadreWidth/2), margrecV + (recuadreHeight/2));
  popStyle();
}

void recuadDresumen() {
  pushStyle();
  rect(banneriWidth + 100, 100, width -banneriWidth - 300, banneriHeight - 230, 30, 30, 30, 30);
  fill(getColorAt(6));
  textSize(30);
  text("Resumen diario:", banneriWidth + 160, 200);
  popStyle();
}

void personas() {
  pushStyle();
  ellipse(ellipseX, ellipseY, 200, 200);
  ellipse(ellipseX1, ellipseY, 200, 200);
  ellipse(ellipseX2, ellipseY, 200, 200);
  ellipse(ellipseX3, ellipseY, 200, 200);


  ellipse(ellipseX, ellipseY1, 200, 200);
  ellipse(ellipseX1, ellipseY1, 200, 200);
  ellipse(ellipseX2, ellipseY1, 200, 200);
  ellipse(ellipseX3, ellipseY1, 200, 200);

  ellipse(banneriWidth + 200, margrecV + 700, 200, 200);
  textFont(getFontAt(0));
  textSize(70);
  textAlign(CENTER);
  fill(getColorAt(5));
  text("Tus conocidos:", margrecH-25 + (recuadreWidth/2), margrecV+37);
  popStyle();
}

void recuadAviso() {
  rect(banneriWidth + 100, 100, width -banneriWidth - 300, banneriHeight - 230, 30, 30, 30, 30);
  fill(getColorAt(6));
  text("AVISO", banneriWidth + banneriWidth/2 + 50, 200);
  textSize(20);
  text("Las imagenes deben ser circulares con un ratio cuadrado, por ejemplo: 20, 20.", banneriWidth + 170, 300);
}
