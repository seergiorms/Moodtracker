// En cas de pitjar el ratolí
void mousePressed() {

  if (b1.mouseOverButton() && b1.enabled) {
    pantalla = PANTALLA.INICIO;
  } else if (inicio.mouseOverButton() && inicio.enabled){
    pantalla = PANTALLA.INICIO;
  } else if (resumen.mouseOverButton() && resumen.enabled){
    pantalla = PANTALLA.RESUMEN;
  } else if (estadisticas.mouseOverButton() && estadisticas.enabled){
    pantalla = PANTALLA.ESTADISTICAS;
  } else if (perfil.mouseOverButton() && perfil.enabled){
    pantalla = PANTALLA.PERFIL;
  } else if (ajustes.mouseOverButton() && ajustes.enabled){

  userText.isPressed();
  passText.isPressed();
}


void keyPressed() {
  userText.keyPressed(key, (int)keyCode);
  passText.keyPressed(key, (int)keyCode);
}

void updateCursor() {

  // Si està sobre algun botó (b1, b2 o b3) i està abilitat
  if ((b1.mouseOverButton() && b1.enabled)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
