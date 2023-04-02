//creación de componentes
Calendari c;
Button [] buttons;
RadioButton[] rbuttons;
DayButton[] calendari;
float[] values = {400, 600, 100, 300};
color[] colorsd = {color(0, 0, 255), color(50, 50, 200), color(255, 0, 0), color(0, 255, 0)};
RadioButtonGroup emociones, pines, persp;

TextField userText, passText;

Button b1, inicio, resumen, personas, estadisticas, perfil, ajustes, siguiente, seleccionarp, atras, siguiente1, atras1, atras2, hecho, volver;
RadioButton mfeliz, feliz, meh, triste, mtriste, aeroplane, divingmask, luggage, sun, swimsuit, umbrella, volleyball, beertin, sunglasses, tv, sandra, manu, perro;

void setGUI() {
  initButtons();
  initTexts();
  initCalendari();
  initRbuttons();
  initRadioButtonGroup() ;
  // rButtons();
}

void initButtons() {
  buttons = new Button[15];
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
  buttons [10] = new Button("Siguiente", margrecH + recuadreWidth/2 + 50, height - margrecV - 105, buttonW, buttonH);
  buttons [11] = new Button("Atrás", margrecH, height - margrecV-105, buttonW, buttonH);
  buttons [12] = new Button("Atrás", margrecH, height - margrecV-105, buttonW, buttonH);
  buttons [13] = new Button("Hecho", margrecH + recuadreWidth/2+ 50, height-margrecV-100, buttonW, buttonH);
  buttons[14] = new Button("Volver", margrecH + recuadreWidth/2+ 50, height-margrecV-100, buttonW, buttonH);




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
  siguiente1 = buttons[10];
  siguiente1.enabled = true;
  siguiente.enabled=false;
  atras1 = buttons[11];
  atras1.enabled = true;
  atras2 = buttons[12];
  hecho = buttons[13];
  volver = buttons[14];
}

//construcción de los radiobuttons
void initRbuttons() {
  rbuttons = new RadioButton[18];
  rbuttons[0] = new RadioButton(margrecH - 50 + (recuadreWidth/5), margrecV+280, 50, 1.5);
  rbuttons[1] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+135, margrecV+280, 50, 1.5);
  rbuttons[2] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+265, margrecV+280, 50, 1.5);
  rbuttons[3] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+395, margrecV+280, 50, 1.5);
  rbuttons[4] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+525, margrecV+280, 50, 1.5);
  rbuttons[5] = new RadioButton(margrecH - 50 + (recuadreWidth/5), margrecV+280, 50, 1.5);
  rbuttons[6] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+135, margrecV+280, 50, 1.5);
  rbuttons[7] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+265, margrecV+280, 50, 1.5);
  rbuttons[8] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+395, margrecV+280, 50, 1.5);
  rbuttons[9] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+525, margrecV+280, 50, 1.5);
  rbuttons[10] = new RadioButton(margrecH - 50 + (recuadreWidth/5), margrecV+280 + 135, 50, 1.5);
  rbuttons[11] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+135, margrecV+280 + 135, 50, 1.5);
  rbuttons[12] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+265, margrecV+280 + 135, 50, 1.5);
  rbuttons[13] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+395, margrecV+280 + 135, 50, 1.5);
  rbuttons[14] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+525, margrecV+280 + 135, 50, 1.5);
  rbuttons[15] = new RadioButton(margrecH - 50 + (recuadreWidth/5), margrecV+280, 50, 1.65);
  rbuttons[16] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+135, margrecV+280, 50, 1.65);
  rbuttons[17] = new RadioButton(margrecH - 50 + (recuadreWidth/5)+265, margrecV+280, 50, 1.65);

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
  aeroplane = rbuttons[5];
  aeroplane.setCheckedColor(getColorAt(2));
  divingmask = rbuttons[6];
  divingmask.setCheckedColor(getColorAt(2));
  luggage = rbuttons[7];
  luggage.setCheckedColor(getColorAt(2));
  sun = rbuttons[8];
  sun.setCheckedColor(getColorAt(2));
  swimsuit = rbuttons[9];
  swimsuit.setCheckedColor(getColorAt(2));
  umbrella = rbuttons[10];
  umbrella.setCheckedColor(getColorAt(2));
  volleyball = rbuttons[11];
  volleyball.setCheckedColor(getColorAt(2));
  beertin = rbuttons[12];
  beertin.setCheckedColor(getColorAt(2));
  sunglasses = rbuttons[13];
  sunglasses.setCheckedColor(getColorAt(2));
  tv = rbuttons[14];
  tv.setCheckedColor(getColorAt(2));
  sandra = rbuttons[15];
  sandra.setCheckedColor(getColorAt(2));
  manu = rbuttons[16];
  manu.setCheckedColor(getColorAt(2));
  perro = rbuttons[17];
  perro.setCheckedColor(getColorAt(2));
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

void disableButtonsInicio() {
  siguiente.setEnabled(false);
}




void disableButtonsInicio1() {
  siguiente1.setEnabled(false);
}

void displayButtonsInicio1() {
  siguiente1.display1();
}

void enableButtonsInicio1() {
  siguiente1.setEnabled(true);
}

void displayButtonsFinal() {
  volver.display1();
}




void initButtonsPines() {
  pines = new RadioButtonGroup(10);
  pines.setRadioButtons(aeroplane, divingmask, luggage, sun, swimsuit, umbrella, volleyball, beertin, sunglasses, tv);
}

void displayButtonsPines() {
  pines.display();
  siguiente1.display1();
  atras.display1();
}


void initButtonsPersp() {
  persp = new RadioButtonGroup(3);
  persp.setRadioButtons(sandra, manu, perro);
}

void displayButtonsPersp() {
  persp.display1();
  atras2.display1();
  hecho.display1();
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
