// En cas de pitjar el ratolí
void mousePressed() {

  if (pantalla==PANTALLA.INICIO) {
    if (siguiente.mouseOverButton() && siguiente.enabled) {
      pantalla = PANTALLA.PINES;
    }
  } else if (pantalla==PANTALLA.CONTRASEÑA) {
    userText.isPressed();
    passText.isPressed();
    if (b1.mouseOverButton() && b1.enabled && comprovaLogin() == true) {
      pantalla = PANTALLA.INICIO;
    }
  }
  
  if (inicio.mouseOverButton() && inicio.enabled) {
    pantalla = PANTALLA.INICIO;
  } else if (resumen.mouseOverButton() && resumen.enabled) {
    pantalla = PANTALLA.RESUMEN;
  } else if (estadisticas.mouseOverButton() && estadisticas.enabled) {
    pantalla = PANTALLA.ESTADISTICAS;
  } else if (perfil.mouseOverButton() && perfil.enabled) {
    pantalla = PANTALLA.PERFIL;
  } else if (ajustes.mouseOverButton() && ajustes.enabled) {
    pantalla = PANTALLA.AJUSTES;
  } else if (siguiente.mouseOverButton() && siguiente.enabled) {
    pantalla = PANTALLA.PINES;
  } else if (personas.mouseOverButton() && personas.enabled) {
    pantalla = PANTALLA.PERSONAS;
  } else if (seleccionarp.mouseOverButton() && seleccionarp.enabled) {
    pantalla = PANTALLA.SELECCIONARP;
  }
}


void keyPressed() {
  userText.keyPressed(key, (int)keyCode);
  passText.keyPressed(key, (int)keyCode);

  // Anar un mes enrere
  if (keyCode==LEFT) {
    c.prevMonth();
    println("PREV MONTH");
  }
  // Anar un mes endavant
  else if (keyCode==RIGHT) {
    c.nextMonth();
    println("PREV MONTH");
  }
}

void updateCursor() {

  // Si està sobre algun botó (b1, b2 o b3) i està abilitat
  if ((b1.mouseOverButton() && b1.enabled)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
