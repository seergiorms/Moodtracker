String fechaEmocion;
 String nombreEmocion;
 int idEmocion;

// En cas de pitjar el ratolí
void mousePressed() {

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
  } else if (personas.mouseOverButton() && personas.enabled) {
    pantalla = PANTALLA.PERSONAS;
  }




  if (pantalla==PANTALLA.INICIO1) {
    eventosPantallaInicio1();
  } else if (pantalla == PANTALLA.INICIO) {
    eventosPantallaInicio();
  } else if (pantalla==PANTALLA.CONTRASENA) {
    eventosPantallaContraseNa();
  } else if (pantalla==PANTALLA.PINES) {
    eventosPantallaPines();
  } else if (pantalla == PANTALLA.PERSP) {
    eventosPantallaPersp();
  } else if (pantalla == PANTALLA.FINAL) {
    eventosPantallaFinal();
  }




  if (pantalla == PANTALLA.RESUMEN) {
    eventosPantallaResumen();
  }

  if (pantalla == PANTALLA.DRESUMEN) {
    eventosPantallaDresumen();
  }

  if (pantalla == PANTALLA.PERSONAS) {
    eventosPantallaPersonas();
  }

  if (pantalla == PANTALLA.SELECCIONARP) {
    eventosPantallaSeleccionarp();
  }
}





void eventosPantallaInicio() {
  if (f.bNext.mouseOverButton()) {
    f.nextMonth();
  }
  if (f.bPrev.mouseOverButton()) {
    f.prevMonth();
  }
  if (f.bOK.mouseOverButton() && f.dateSelected) {

    dataCalendari = f.selectedDay +"/"+ f.selectedMonth + "/"+ f.selectedYear;
    pantalla = PANTALLA.INICIO1;
  }
  f.checkButtons();
}





void eventosPantallaInicio1() {
  if (siguiente.mouseOverButton() && siguiente.enabled) {
    pantalla = PANTALLA.PINES;
    String rFecha = f.getDateText();
    int rEmocion = emociones.nombreSeleccionado();
    insertFecha(rFecha, rEmocion);
  }

  if (atras3.mouseOverButton() && atras3.enabled) {
    pantalla = PANTALLA.INICIO;
  }

  emociones.updateOnClick();
  if (emociones.numeroSeleccionados()>0) {
    siguiente.setEnabled(true);
  } else {
    siguiente.setEnabled(false);
  }
}




void eventosPantallaContraseNa() {
  userText.isPressed();
  passText.isPressed();
  if (b1.mouseOverButton() && b1.enabled && comprovaLogin() == true) {
    pantalla = PANTALLA.INICIO;
  }
}




void eventosPantallaPines() {
  if (siguiente.mouseOverButton() && siguiente.enabled) {
    pantalla = PANTALLA.PERSP;
    int rPines[]  = pines.getPines();
    String rFecha = f.getDateText();
    for (int i = 0; i<rPines.length; i++) {
      insertPin(rPines[i], rFecha);
    }
  } else if (atras.mouseOverButton() && atras.enabled) {
    pantalla = PANTALLA.INICIO1;
  } else if (aeroplane.onMouseOver()) {
    aeroplane.toggle();
  } else if (divingmask.onMouseOver()) {
    divingmask.toggle();
  } else if (luggage.onMouseOver()) {
    luggage.toggle();
  } else if (sun.onMouseOver()) {
    sun.toggle();
  } else if (swimsuit.onMouseOver()) {
    swimsuit.toggle();
  } else if (umbrella.onMouseOver()) {
    umbrella.toggle();
  } else if (volleyball.onMouseOver()) {
    volleyball.toggle();
  } else if (beertin.onMouseOver()) {
    beertin.toggle();
  } else if (sunglasses.onMouseOver()) {
    sunglasses.toggle();
  } else if (tv.onMouseOver()) {
    tv.toggle();
  }
}




void eventosPantallaPersp() {
  if (hecho.mouseOverButton() && hecho.enabled) {
    pantalla = PANTALLA.FINAL;
    int rPersonas[]  = persp.getPines();
    String rFecha = f.getDateText();
    for (int i = 0; i<rPersonas.length; i++) {
      insertPersona(rPersonas[i], rFecha);
    }
  } else if (atras2.mouseOverButton() && atras2.enabled) {
    pantalla = PANTALLA.PINES;
  } else if (sandra.onMouseOver()) {
    sandra.toggle();
  } else if (manu.onMouseOver()) {
    manu.toggle();
  } else if (perro.onMouseOver()) {
    perro.toggle();
  }
}




void eventosPantallaFinal() {
  if (volver.mouseOverButton() && volver.enabled) {
    pantalla = PANTALLA.INICIO;
  }
}




void eventosPantallaResumen() {
  c.checkButtons();
  if (c.dateSelected == true) {
    pantalla = PANTALLA.DRESUMEN;
     fechaEmocion = c.getDateText();
     idEmocion = getEmocion(fechaEmocion);
     nombreEmocion =  getNombre(idEmocion);
  }
}




void eventosPantallaDresumen() {
  if (volver1.mouseOverButton() && volver1.enabled) {
    pantalla = PANTALLA.RESUMEN;
  }
}




void eventosPantallaPersonas() {
  if (seleccionarp.mouseOverButton() && seleccionarp.enabled) {
    pantalla = PANTALLA.SELECCIONARP;
  }
}

void eventosPantallaEliminarp() {
  if ( eliminar.mouseOverButton() && eliminar.enabled) {
  }
}

void eventosPantallaSeleccionarp() {
  if (seleccionar1.mouseOverButton() && seleccionar1.enabled) {
    selectInput("Selecciona una imatge ...", "fileSelected");
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
