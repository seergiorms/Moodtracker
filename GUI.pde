//creación de componentes
Calendari c;
Button [] buttons;
RadioButton[] rbuttons;
DayButton[] calendari;
String[] textos = {"WATER", "AIR", "FIRE", "EARTH"};
float[] values = {400, 600, 100, 300};
color[] colorsd = {color(0, 0, 255), color(50, 50, 200), color(255, 0, 0), color(0, 255, 0)};
RadioButtonGroup emociones;

TextField userText, passText;

Button b1, inicio, resumen, personas, estadisticas, perfil, ajustes, siguiente, seleccionarp, atras;
RadioButton mfeliz, feliz, meh, triste, mtriste;

void setGUI() {
  initButtons();
  initTexts();
  initCalendari();
  initRbuttons();
  initRadioButtonGroup() ;
  // rButtons();
}

void initButtons() {
  buttons = new Button[10];
  buttons [0] = new Button ("Hecho", margrecH + recuadreWidth/2+ 50, height-margrecV-126, buttonW, buttonH);
  buttons [1] = new Button("Inicio", 50, 60, buttonW, buttonH);
  buttons [2] = new Button("Resumen", 50, 60 + buttonH, buttonW, buttonH);
  buttons [3] = new Button("Personas", 50, 60 + (2*buttonH), buttonW, buttonH);
  buttons [4] = new Button("Estadísticas", 50, 60 + (3*buttonH), buttonW+36, buttonH);
  buttons [5] = new Button("Perfil", 50, 60 + (4*buttonH), buttonW, buttonH);
  buttons [6] = new Button("Ajustes", 50, 60 + (5*buttonH), buttonW, buttonH);
  buttons [7] = new Button("Siguiente", margrecH + recuadreWidth/2 + 50, height - margrecV - 105, buttonW, buttonH);
  buttons [8] = new Button("Seleccionar", margrecH + recuadreWidth/2+ 50, height-margrecV-100, buttonW, buttonH);
  buttons [9] = new Button("Atrás", margrecH, height - margrecV-105, buttonW, buttonH);


  b1 = buttons[0];
  inicio = buttons[1];
  resumen = buttons[2];
  personas = buttons[3];
  estadisticas = buttons[4];
  perfil = buttons[5];
  ajustes = buttons[6];
  siguiente = buttons[7];
  seleccionarp = buttons[8];
  atras = buttons[9];
}

//construcción de los radiobuttons
void initRbuttons() {
  rbuttons = new RadioButton[5];
  rbuttons[0] = new RadioButton(margrecH - 50 + (recuadreWidth/5), margrecV+280, 50);
  rbuttons[1] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+135, margrecV+280, 50);
  rbuttons[2] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+265, margrecV+280, 50);
  rbuttons[3] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+395, margrecV+280, 50);
  rbuttons[4] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+525, margrecV+280, 50);

  mfeliz = rbuttons[0];
  mfeliz.setCheckedColor(getColorAt(0));
  feliz = rbuttons[1];
  feliz.setCheckedColor(getColorAt(1));
  meh = rbuttons[2];
  meh.setCheckedColor(getColorAt(2));
  triste = rbuttons[3];
  triste.setCheckedColor(getColorAt(3));
  mtriste = rbuttons[4];
  mtriste.setCheckedColor(getColorAt(4));
}
//creación del radiobuttongroup
void initRadioButtonGroup() {
  emociones = new RadioButtonGroup(5);
  emociones.setRadioButtons(mfeliz, feliz, meh, triste, mtriste);
}

void displayEmociones() {
  emociones.display();
}

// calendario
void initCalendari () {
  c = new Calendari(margrecH, margrecV + 120, 700, 550);
}

void enableCalendari() {
  c.setEnabled(true);
}

void disableCalendari() {
  c.setEnabled(false);
}
void displayCalendari() {
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

void displayButtonsPines() {
  siguiente.display1();
  atras.display1();
}

void enableButtonsPines() {
  siguiente.setEnabled(true);
  atras.setEnabled(true);
}

void displayButtonsPersonas() {
  seleccionarp.display1();
}

void enableButtonsPersonas() {
  seleccionarp.setEnabled(true);
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
