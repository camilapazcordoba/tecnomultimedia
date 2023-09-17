 function teclas() {

  if ((keyCode == LEFT_ARROW) && (lugarx > 65)) {
    lugarx= lugarx-5;
  }
  if ((keyCode == RIGHT_ARROW) && (lugarx < width - 100 - 75)) {
    lugarx= lugarx+5;
  }
}
