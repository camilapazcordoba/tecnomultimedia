class Cobertura {
  constructor(x, y) {
 //variables
    this.posX = x;
    this.posY = y;
    this.alto = 50;
    this.ancho = 80;
    this.vida = 3;
    this.estaVivo = true;
    this.imagen = imgPng[2];
  }
  
//metodo para dibujar los carroajes
  dibujar() {
    if (this.estaVivo) {
      imageMode(CENTER);
      image(this.imagen, this.posX, this.posY, this.ancho, this.alto);
    }
  }

//metodo para verificar si la toco una bala
  haTocadoLaBala(bala) {
    if (dist(this.posX, this.posY, bala.posX, bala.posY) < 30) {
      this.vida --;
      bala.disparada = false;
      this.ancho -= 20;
      this.alto -= 10;
      if (this.vida === 0) {
        this.estaVivo = false;
      }
    }
  }
}
