// En cas de pitjar el ratolí
void mousePressed() {

  if (pantalla==PANTALLA.INICIO) {

    if (siguiente.mouseOverButton() && siguiente.enabled) {
      pantalla = PANTALLA.PINES;
    } else if (mfeliz.onMouseOver()) {
      mfeliz.toggle();
      feliz.setChecked(false);
      meh.setChecked(false);
      triste.setChecked(false);
      mtriste.setChecked(false);
    } else if (feliz.onMouseOver()) {
      feliz.toggle();
      mfeliz.setChecked(false);
      meh.setChecked(false);
      triste.setChecked(false);
      mtriste.setChecked(false);
    } else if (meh.onMouseOver()) {
      meh.toggle();
      mfeliz.setChecked(false);
      feliz.setChecked(false);
      triste.setChecked(false);
      mtriste.setChecked(false);
    } else if (triste.onMouseOver()) {
      triste.toggle();
      mfeliz.setChecked(false);
      meh.setChecked(false);
      feliz.setChecked(false);
      mtriste.setChecked(false);
    } else if (mtriste.onMouseOver()) {
      mtriste.toggle();
      mfeliz.setChecked(false);
      meh.setChecked(false);
      triste.setChecked(false);
      feliz.setChecked(false);
    }
  } else if (pantalla==PANTALLA.CONTRASEÑA) {
    userText.isPressed();
    passText.isPressed();
    if (b1.mouseOverButton() && b1.enabled && comprovaLogin() == true) {
      pantalla = PANTALLA.INICIO;
    }
  } else if (pantalla==PANTALLA.PINES) {
    if (siguiente.mouseOverButton() && siguiente.enabled) {
      pantalla =   PANTALLA.PERSP;
    } else if
      (atras.mouseOverButton() && atras.enabled) {
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
  }
