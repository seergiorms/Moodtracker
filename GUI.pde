
Button [] buttons;
Button [] Rbuttons;

TextField userText, passText;

Button b1;

void setGUI() {
  initButtons();
  initTexts();
}

void initButtons() {
  buttons = new Button[1];
  buttons [0] = new Button ("Hecho", margrecH + recuadreWidth/2+ 50, height-margrecV-126, buttonW, buttonH);

  b1 = buttons[0];
}

void radioButtons() {
  Rbuttons = new Button[1];
  Rbuttons [0] = new Button (

  rb1 = new RadioButton(180, 75, 15);
}

void disableButtons() {
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].setEnabled(false);
  }
}
void enableButtonsIniciales() {
  b1.setEnabled(true);
}

void displayButtonsIniciales() {
  b1.display();
}

void displayTextField1() {
  userText.displaytext();
}

void displayTextField2() {
  passText.displaytext();
}

void initTexts() {
  userText = new TextField(margusuarioH + 200, margusuarioV, usuarioWidth-200, usuarioHeight);
  passText = new TextField(margusuarioH + 200, margusuarioV + 70, usuarioWidth-200, usuarioHeight);
}
