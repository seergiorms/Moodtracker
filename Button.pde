
class Button {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions

  // Colors de contorn, farciment, actiu i desactiu
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;

  String textBoto;  // Text
  boolean enabled;  // Abilitat / desabilitat

  // Mètode Constructor
  Button(String text, float x, float y, float w, float h) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color(getColorAt(4));
    fillColorOver = color(255);
    fillColorDisabled = color(150);
    strokeColor = color(getColorAt(4));
  }
  
   RadioButton(int x, int y, int r){
    this.x = x;
    this.y = y;
    this.r = r;
    this.checked = false;
    this.bgColor = color(255);
    this.borderColor = color(0);
    this.checkedColor = color(180);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuixa el botó
  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color desabilitat
    } else if (mouseOverButton()) {
      fill(fillColorOver);      // Color quan ratolí a sobre
    } else {
      fill(fillColor);          // Color actiu però ratolí fora
    }
    stroke(strokeColor);
    strokeWeight(2);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h, 10);    // Rectangle del botó

    // Text (color, alineació i mida)

    if (!enabled) {
      fill(255);
      textAlign(CENTER);
      textSize(30);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    } else if (mouseOverButton()) {
      fill(getColorAt(4));
      textAlign(CENTER);
      textSize(30);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    } else {
      fill(255);
      textAlign(CENTER);
      textSize(30);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    }
    popStyle();
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
