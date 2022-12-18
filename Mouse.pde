// En cas de pitjar el ratolí
void mousePressed() {

  if (b1.mouseOverButton() && b1.enabled) {
    pantalla = PANTALLA.INICIO;
  }

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
