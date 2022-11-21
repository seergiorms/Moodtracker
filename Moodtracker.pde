Button b1;

boolean logged = false;

// Declaració de les variables
TextField userText, passText;

// Dimensions dels botons
float buttonW = 300;
float buttonH = 100;

color bgColor = color(255);

void setup(){
  // Dimensions de l'App
  fullScreen();
  //width = 1920
  //height = 1080
  // Inicialitza els colors de l'App
  setColors();
  setFonts();
  setMedias();
   b1 = new Button("Siguiente", margrecH + recuadreWidth/2+ 50, height-margrecV-126, buttonW, buttonH);
   userText = new TextField(margusuarioH, 103, 200, 35);
   passText = new TextField(260, 153, 200, 35);
}


void draw(){

  // Dibuixa el fons (blanc)
  background(255);
  displayPic(0, 0, 0, width, height);
  Recuadreinici();
  FotoPerfil();
  b1.display();
  Usuario();
  Contraseña();

  updateCursor();
     fill(0); textSize(48); textAlign(LEFT);
   text("Username: ", 100, 130);
   text("Password: ", 100, 180);
   
   // Dibuixa els camps de text
   userText.display();
   passText.display();
   
   // Si el login és correcte
   if (comprovaLogin()) {
      fill(250); textAlign(CENTER);
      text("YOU ARE LOGGED IN!", width/2, 230);
   }
}

void mousePressed(){
    userText.isPressed();
   passText.isPressed();
   
  // Si pitjam sobre el boto b1 i està abilitat
  if(b1.mouseOverButton() && b1.enabled){
    bgColor = color(190);
  }
}
boolean comprovaLogin() {
   if ( userText.text.equals("admin") && 
        passText.text.equals("1234")) {
      return true;
   } else {
      return false;
   }
}


// Modifica el cursor
void updateCursor(){
  
  // Si està sobre algun botó (b1, b2 o b3) i està abilitat
  if((b1.mouseOverButton() && b1.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  } 
}
void keyPressed() {
   userText.keyPressed(key, (int)keyCode);
   passText.keyPressed(key, (int)keyCode);
   comprovaLogin();
}
