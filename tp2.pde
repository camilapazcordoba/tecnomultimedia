//Alumna: Camila Paz Córdoba 
//Legajo: 93.083/0
//Comisión: 2
//Tp2: Ilusión óptica
//Link del video de youtube https://youtu.be/T9_Z1M6946g


PImage img;

//Declaración de variables 
float cantidadX=15, cantidadY=15; //cantidad de figuras
float medX, medY; // medida de X e Y
float rojo=1, cambio=1; //variables dinámicas
color n =(0); //color de background

void setup(){
  size(800,400);
  img = loadImage("ilusion.png");
}

void draw(){
  
 background(n);
  image(img,0,0);
  
   pushMatrix();
  translate(400,0); //translada hacia la derecha la ilusión
    
//Calculo de la medida de X e Y con las variables de cantidades
medX= (float) width/cantidadX;
medY= (float) width/cantidadY;

for(int X=0 ; X<cantidadX ; X++){ //El For se encarga de a repetición en X
   for(int Y=0 ; Y<cantidadY ; Y++){ //El For anidado se encarga de la repetición en Y
   //circulos
   fill(rojo,0,0);
   ellipse(X*medX+5,Y*medY+5,medX-10,medY-10);
   //cuadrado
   fill(14,mouseX,142,rojo);
   rect(X*medX+10,Y*medY+10,medX-10,medY-10);
   
   }
  //Utilizo a rojo como una variable dinámica, se mueve sin tener que tocar el mouse o una tecla
  // A rojo le sumo la variabe cambio
   rojo=rojo+cambio;
   //Establezco los límites de rojo
if ( (rojo>255) || (rojo<0) ){
  //En el caso de que supere esos límites se invierte el valor de la variable cambio
cambio=-cambio;
}
//Utilizo constrain para poner los limites de rojo
rojo=constrain(rojo,0,255);
   }
popMatrix();
}
//incrementa la cantidad de figuras
void mousePressed(){
  cantidadX++;
  cantidadY++;
}
//Restablece las variables al valor inicial
void keyPressed(){
  if (key == 'r'){
  cantidadX=15;
  cantidadY=15;
  }
  if (key == 'n'){ //Cambia el valor del background
  n = color (random (0,255));
  }
}
