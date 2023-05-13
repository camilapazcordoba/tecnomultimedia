//Camila Elizabeth Paz Córdoba, legajo 93083/0
//tp1, presentación sobre los osos panda

PImage imagen1, imagen2, imagen3;
PFont Fuente;
int contador = 0;
int textoX = 0;
int textoY = 0;
int fade = 0;


void setup(){
  size(640, 480);
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");

  Fuente = loadFont("Rockwell-ExtraBold-48.vlw");

};

void draw(){

  //tiempo de cada imagen
  if(contador < 2200){
    contador++;
  }

  //condiciones
  if(contador <600){
    image(imagen1, 0, 0,640,480);

    //texto de la primer pantalla
    textFont (Fuente, 22);
    textAlign(CENTER,BOTTOM);
    fill(255);
    text("Los osos panda se encuentran \n en peligro de extinción!!! \n Por dos motivos, su dificultad \n para reproducirse y la tala de \n bosques de bambú en China.",220, textoX);
    textoX++;
    

  } else if (contador > 600 && contador < 1500){
    image(imagen2, 0, 0,640,480);

    //texto pantalla dos
    textFont(Fuente, 28);
    textAlign(CENTER, TOP);
    fill(#0D0583);
    text("Son de caracter solitario,\n Y suelen delimitar su \n territorio con orina,olores \n y marcas de garras.",textoY,350);
    textoY++;

  } else if (contador > 1500 ) {
    image(imagen3, 0, 0,640,480);

    //texto pantalla tres
    textFont(Fuente, 23);
    textAlign(CENTER,BOTTOM);
     fill(5,5, 5, fade);
    text("Escalan hasta los \n 4 metros para alimentarse y \n conseguir su bambú. \n Suelen pasar la mitad \n del dia comiendo \n y la otra mitad del \n día duermen.", 210, 340);
    fade++;


    //boton 
    fill(185);
    rect(130, 420, 100, 50);
    textAlign(LEFT, CENTER);
    textSize(15);
    fill(0);
    text("reiniciar", 142, 445);

  }

};

void mousePressed() {
  if(contador > 1500 && mouseX > 130 && mouseX < 230 && mouseY > 420 && mouseY < 470){
  contador = 0;
  textoX = 0;
  textoY = 0;
  fade = 0;
  }
}
