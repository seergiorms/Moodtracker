PImage img;
String titol="";


class Button {
  // Propietats d'un botó:
  float x, y, w, h, r;  // Posició i dimensions
  // Colors de contorn, farciment, actiu i desactiu
  color fillColor1, strokeColor1, fillColor2, strokeColor2;
  color fillColorOver1, fillColorDisabled, bgColor, borderColor, checkedColor, fillColorOver2;

  String textBoto;  // Text
  boolean enabled, checked, selected;  // Abilitat / desabilitat


  // Mètode Constructor
  Button(String text, float x, float y, float w, float h) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor1 = color(getColorAt(4));
    fillColorOver1 = color(getColorAt(5));
    fillColorDisabled = color(150);
    strokeColor1 = color(getColorAt(4));

    fillColor2 = color(getColorAt(5));
    fillColorOver2 = color(getColorAt(5));
    strokeColor2 = color(255);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }  // Setters

  void setSelected(boolean b) {
    this.selected = b;
  }

  // Dibuixa el botó
  void display1() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color desabilitat
    } else if (mouseOverButton()) {
      cursor(HAND);
      fill(fillColorOver1);   // Color quan ratolí a sobre
    } else {
      cursor(ARROW);
      fill(fillColor1);   // Color actiu però ratolí fora
    }
    stroke(strokeColor1);
    strokeWeight(2);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h, 10);    // Rectangle del botó
    // Text (color, alineació i mida)


    if (!enabled) {
      fill(getColorAt(5));
      textAlign(CENTER);
      textSize(30);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    } else if (mouseOverButton()) {
      cursor(HAND);
      fill(getColorAt(4));
      textAlign(CENTER);
      textSize(30);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    } else {
      cursor(ARROW);
      fill(getColorAt(5));
      textAlign(CENTER);
      textSize(30);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    }
    popStyle();
  }

  void display2() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color desabilitat
    } else if (mouseOverButton()) {
      pushStyle();
      fill(fillColorOver2); // Color quan ratolí a sobre
      cursor(HAND);
      popStyle();
    } else {
      cursor(ARROW);
      fill(fillColor2);          // Color actiu però ratolí fora
    }
    stroke(strokeColor2);
    strokeWeight(2);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h, 10);    // Rectangle del botó
    // Text (color, alineació i mida)

    textAlign(LEFT);

    if (!enabled) {
      fill(getColorAt(6));
      textSize(40);
      text(textBoto, this.x, this.y + this.h/2 + 10);
    } else if (mouseOverButton()) {
      fill(getColorAt(2));
      textSize(50);
      text(textBoto, this.x, this.y + this.h/2 + 10);
    } else {
      fill(getColorAt(6));
      textSize(40);
      text(textBoto, this.x, this.y + this.h/2 + 10);
    }
    popStyle();
  }

  void display3() {
    pushStyle();
    textSize(25);
    if (!enabled) {
      fill(fillColorDisabled);  // Color desabilitat
    } else if (mouseOverButton()) {
      cursor(HAND);
      fill(fillColorOver1);   // Color quan ratolí a sobre
    } else {
      cursor(ARROW);
      fill(fillColor1);   // Color actiu però ratolí fora
    }
    stroke(strokeColor1);
    strokeWeight(2);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h, 10);    // Rectangle del botó
    // Text (color, alineació i mida)


    if (!enabled) {
      fill(getColorAt(5));
      textAlign(CENTER);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    } else if (mouseOverButton()) {
      cursor(HAND);
      fill(getColorAt(4));
      textAlign(CENTER);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    } else {
      cursor(ARROW);
      fill(getColorAt(5));
      textAlign(CENTER);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    }
    popStyle();
  }


  void fileSelected(File selection) {
    if (selection == null) {
      println("No s'ha seleccionat cap fitxer.");
    } else {

      // Obtenim la ruta del fitxer seleccionat
      String rutaImatge = selection.getAbsolutePath();

      img = loadImage(rutaImatge);  // Actualitzam imatge
      titol = selection.getName();  // Actualitzam títol
    }
  }




  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
