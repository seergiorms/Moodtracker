
class RadioButton {
  
  // Propietats
  float x, y, r, d;
  
  // Colors
  color bgColor;
  color borderColor;
  color checkedColor;
  
  boolean checked;
  
  // Constructor
  RadioButton(float x, float y, float r, float d){
    shapeMode(CENTER);
    this.x = x;
    this.y = y;
    this.r = r;
    this.d = d;
    this.checked = false;
    noStroke();
    this.bgColor = color(255);
    this.checkedColor = color(180);
  }
  
  void setCheckedColor(color c){
    this.checkedColor = c;
  }
  
  
  // Dibuixa el CheckBox
  void display(){
    pushStyle();
    stroke(borderColor);
    strokeWeight(2);
    fill(bgColor);
    ellipse(x, y, 2*r, 2*r);
    
    if(this.checked){
      fill(checkedColor); noStroke();
      ellipse(x, y, d*r, d*r);
    }
    popStyle();
  }
  
  
  void setChecked(boolean b){
    this.checked = b;
  }
  
  // Canvia l'estat de selecció
  void toggle(){
    this.checked = ! this.checked;
  }
  
  
  // Mira si el ratolí està sobre el checkbox
  boolean onMouseOver(){
    return  dist(mouseX, mouseY, this.x, this.y) < this.r;
  }
  
}
