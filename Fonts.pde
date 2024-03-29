// Fitxer amb la informació dels Fonts de l'App
  
// Array de tipografies
PFont[] fonts;
  
// Estableix les fonts de l'App
void setFonts(){
    this.fonts = new PFont[3];
    this.fonts[0] = createFont("Edmondsans-Bold.otf", midaSubtitol);
    this.fonts[1] = createFont("F25_Bank_Printer.otf", midaParagraf);
    this.fonts[2] = createFont("Longhaul.ttf", midaTitol);
}
  
  // Getter del número de fonts
  int getNumFonts(){
    return this.fonts.length;
  }
  
  // Getter de la font i-èssima
  PFont getFontAt(int i){
    return this.fonts[i];
  }
  
  
  // Dibuixa les font de l'App
  void displayFonts(float x, float y, float h){
    pushStyle();     
      for(int i=0; i<getNumFonts(); i++){
        fill(0); stroke(0); strokeWeight(3);
        textFont(getFontAt(i));
        text("Tipografia "+i, x, y + i*h);
      }
    popStyle();
  }
