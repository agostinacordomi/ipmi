PFont fuente;
PImage img1, img2, img3, img4, img5;
int estado;
int contador;
int pararcontador;
float posX, posY;
String texto1, texto2, texto3, texto4, texto5;

void setup(){
  size(640, 480);
  img1 = loadImage("data/imagen1.jpg");
  img2 = loadImage("data/imagen2.jpg");
  img3 = loadImage("data/imagen3.jpg");
  img4 = loadImage("data/imagen4.jpg");
  img5 = loadImage("data/imagen6.jpg");

  fuente = loadFont("ComicSansMS-30.vlw");
  textFont(fuente);

  texto1 = "Cómo jugar al buscaminas?";
  texto2 = "El objetivo principal es despejar un campo de minas sin hacer estallar ninguna. Para ganar, hay que descubrir todas las celdas que no contienen minas.";
  texto3 = "Hace clic en una celda cualquiera del tablero. Esto revelará un número o un área despejada de celdas vacías. El número indica cuántas minas hay en las celdas adyacentes.";
  texto4 = "Si crees que una celda contiene una mina, clic derecho para marcarla con una bandera. Esto te ayuda a recordar dónde crees que hay minas.";
  texto5 = "Seguí revelando celdas y marcando minas hasta que todas las celdas sin minas hayan sido descubiertas. Si haces clic en una mina, perdes el juego.";

  estado = 1;
  contador = 0;
  posX = 10;
  posY = 450;
  pararcontador = 0;
}

void draw(){
  background(0);
  if (estado == 1) {
    // Pantalla 1
    image(img1, 0, 0, width, height);
    fill(0);
    textSize(30);
    textAlign(LEFT);
    text(texto1, posX, posY);

    contador++;
    if (contador >= 60) {
      estado++;
      contador = 0;
    }
  } else if (estado == 2) {
    // Transición de 1 a 2
    image(img1, 0, 0, width, height);
    textSize(30);
    text(texto1, posX, posY);

    posX += 5;
    if (posX >= width) {
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 3) {
    // Pantalla 2
    image(img2, 0, 0, width, height);
    fill(0);
    textSize(30);
    textAlign(TOP);
    text(texto2, posX, posY, 600, 200);

    contador++;
    if (contador >= 60) {
      estado++;
      contador = 0;
    }
  } else if (estado == 4) {
    // Transición de 2 a 3
    image(img2, 0, 0, width, height);
    fill(0);
    textSize(30);
    text(texto2, posX, posY, 600, 200);

    posX += 5;
    if (posX >= width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 5) {
    // Pantalla 3
    image(img5, 0, 0, width, height);
    fill(0);
    textSize(30);
    text(texto3, posX, posY, 600, 200);

    if (posY > height / 2) {
      posY -= 2;
    } else if (posY <= height / 2) {
      pararcontador++;
      if (pararcontador >= 180) {
        posY -= 2;
      }
    }

    if (posY < -50) {
      estado = 6;
      posX = 20;
      posY = 320;
      contador = 0;
      pararcontador = 0;
    }
  } else if (estado == 6) {
    // Pantalla 4
    image(img5, 0, 0, width, height);
    fill(0);
    textSize(30);
    textAlign(LEFT, TOP);
    text(texto4, posX, posY, 600, 200);

    if (posY > height / 2) {
      posY -= 2;
    } else if (posY <= height / 2) {
      pararcontador++;
      if (pararcontador >= 180) {
        posY -= 2;
      }
    }

    if (posY < -50) {
      estado = 7;
      posX = 20;
      posY = 320;
      contador = 0;
      pararcontador = 0;
    }
  } else if (estado == 7) {
    // Pantalla 5
    image(img2, 0, 0, width, height);
    fill(0);
    textSize(30);
    textAlign(LEFT, TOP);
    text(texto5, posX, posY, 600, 200);

    if (posY > -200) {
      posY -= 2;
    } else {
      estado = 8;
    }

    fill(255);
    rect(250, 200, 140, 50);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Reiniciar", 320, 225);
  } else if (estado == 8) {
    // Mostrar solo el botón de reinicio
    fill(255);
    rect(250, 200, 140, 50);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Reiniciar", 320, 225);
  }
}

  void mousePressed() {
  //Botón
  if (estado == 8) {
  if (mouseX >= 250 && mouseX <= 390 && mouseY >= 200 && mouseY <= 250) {
      // Reiniciar el estado a 1
      estado = 1;
      // Restablecer las posiciones X e Y
      posX = 10;
      posY = 450;
      // Restablecer el contador y el contador de pausa
      contador = 0;
      pararcontador = 0;
    }
  }
}
