Button [] buttons;
DayButton[] calendari;

TextField userText, passText;

Button b1, inicio, resumen, personas, estadisticas, perfil, ajustes, siguiente;

void setGUI() {
  initButtons();
  initTexts();
  // rButtons();
}

void initButtons() {
  buttons = new Button[8];
  buttons [0] = new Button ("Hecho", margrecH + recuadreWidth/2+ 50, height-margrecV-126, buttonW, buttonH);
  buttons [1] = new Button("Inicio", 0, 60, buttonW, buttonH);
  buttons [2] = new Button("Resumen", 16, 60 + buttonH, buttonW, buttonH);
  buttons [3] = new Button("Personas", 32, 60 + (2*buttonH), buttonW, buttonH);
  buttons [4] = new Button("Estadísticas", 64, 60 + (3*buttonH), buttonW+36, buttonH);
  buttons [5] = new Button("Perfil", 0, 60 + (4*buttonH), buttonW, buttonH);
  buttons [6] = new Button("Ajustes", 16, 60 + (5*buttonH), buttonW, buttonH);
  buttons [7] = new Button("Siguiente", margrecH + recuadreWidth/2 + 50, height - margrecV - 105, buttonW, buttonH);


  b1 = buttons[0];
  inicio = buttons[1];
  resumen = buttons[2];
  personas = buttons[3];
  estadisticas = buttons[4];
  perfil = buttons[5];
  ajustes = buttons[6];
  siguiente = buttons[7];
}

void Calendari() {
  c = new Calendari(50,100,700,550);
}
void displayCalendario(){
  c.display();
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
  b1.display1();
}

void displayButtonsInicio() {
  siguiente.display1();
}

void enableButtonsInicio() {
  siguiente.setEnabled(true);
}

void enableButtonsMenu() {
  inicio.setEnabled(true);
  resumen.setEnabled(true);
  personas.setEnabled(true);
  estadisticas.setEnabled(true);
  perfil.setEnabled(true);
  ajustes.setEnabled(true);
}
void displayButtonsMenu() {
  inicio.display2();
  resumen.display2();
  personas.display2();
  estadisticas.display2();
  perfil.display2();
  ajustes.display2();
}

//disable, enable, display etc RadioButton

//void disableRadio() {
//  for (int i = 0; i<rbuttons.length; i++) {
//    rbuttons[i].setEnabled(false);
//  }
//}
//void enableButtonsIniciales() {
//  c1.setEnabled(true);
//  c2.setEnabled(true);
//  c3.setEnabled(true);
// c4.setEnabled(true);
//  c5.setEnabled(true);
//}

//void displayButtonsIniciales() {
// c1.display();
// c2.display();
// c3.display();
// c4.display();
// c5.display();
//}

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
