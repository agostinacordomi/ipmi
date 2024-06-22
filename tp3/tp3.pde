// https://youtu.be/K59a0_c4Nhc
int t, m;
float movimiento = 0;
float velocidad = 0.01; 
float cuadradoSize = 20; 
boolean movimientoActivo = true;
PImage img;

void setup() {
  size(800, 400); 
  img = loadImage("vasarely.jpg");

  m = 20; // número de cuadrados en una fila/columna
  t = width / 2 / m; // tamaño de cada cuadro basado en el número de cuadrados y el tamaño de la pantalla
}

void draw() {
  background(20, 100, 72); 
  image(img, 0, 0, width / 2, height);

  // grilla de cuadrados y elipses 
  for (int a = 0; a < m; a++) { //recorrido de las filas
    for (int k = 0; k < m; k++) { //recorrido de las columnas
      // cuadrados
      fill(20, 100, 72); 
      stroke(0);
      strokeWeight(0.5);
      rect((a * t) + width / 2, k * t, cuadradoSize, cuadradoSize); 

      // elipses
      if (movimientoActivo) {
        float c = map(calcularDistancia((a * t) + width / 2, k * t, width * 0.75, height / 2), 0, width / 4, 255, 0); // Color basado en la distancia al centro del lado derecho
        fill(c, 36, 40); 
        noStroke();
        float diametro = map(sin(movimiento + a * 0.1 + k * 0.1), -1, 1, 10, 20); // Tamaño de la elipse cambia con el movimiento
        ellipse((a * t) + width / 2 + cuadradoSize / 2, k * t + cuadradoSize / 2, diametro, diametro);
      }
    }
  }

  // Control de movimiento de las elipses
  if (movimientoActivo) {
    movimiento += velocidad;
  }
}
//evento de teclado y condicionales
void keyPressed() {
  if (key == 's' || key == 'S') {
    movimientoActivo = false; // Detiene el movimiento de las elipses
    noLoop(); // Detiene la actualización del sketch
  } else if (key == 'r' || key == 'R') {
    resetMov(); // Reinicia el movimiento de las elipses
  }
}
//función para reiniciar variables a su estado original
void resetMov() {
  movimiento = 0; // reinicia el valor de movimiento
  movimientoActivo = true; // activa nuevamente el movimiento
  loop(); // reinicia la actualización del sketch
}

// calcular distancia entre dos puntos
float calcularDistancia(float x1, float y1, float x2, float y2) {
  float distancia = dist(x1, y1, x2, y2);
  return distancia;
}

// cambiar tamaño de cuadrados verdes
void cambiarTamanioCuadrados(float nuevoTamanio) {
  cuadradoSize = nuevoTamanio;
}

void mousePressed() {
  // cambiar tamaño de cuadrados verdes al hacer clic con el mouse
  float nuevoTamanio = random(10, 30); // genera un tamaño aleatorio entre 10 y 30
  //llama a la función de arriba para actualizar su tamaño
  cambiarTamanioCuadrados(nuevoTamanio);
}
