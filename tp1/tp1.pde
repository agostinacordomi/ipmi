PImage paisaje;

void setup () {
  size (800,400); 
  paisaje = loadImage ("paisaje.jpg"); //imagen de referencia
}
void draw () {
  background (222,222,222);
  image (paisaje,400,0);
  //sol
  fill(252,219,51);
  ellipse(330,120,100,100);
  fill(240,245,243);
  //montañas
  triangle(180,400,400,20,400,300);
  triangle(250,200,300,100,400,200);
  triangle(0,300,232,60,344,160);
  triangle(0,200,100,60,200,200);
  fill(35,131,29);
  rect(0,200,400,180);
  ellipse(260,230,280,80);
  fill (155,183,219);
  noStroke();
  rect(0,230,400,200);

///árboles
  fill(134,85,7); //color para el tronco
  rect (20,170,5,40);
  rect(40,170,5,40);
  rect(60,170,5,40);
  rect(80,170,5,40);
  rect(100,170,5,40);
  fill(34, 139, 34); // color para la copa del árbol
  triangle(22.5, 130, 10.5, 170, 34.5, 170); // Triángulo 1
  triangle(42.5, 130, 30.5, 170, 54.5, 170); // Triángulo 2
  triangle(62.5, 130, 50.5, 170, 74.5, 170); // Triángulo 3
  triangle(82.5, 130, 70.5, 170, 94.5, 170); // Triángulo 4
  triangle(102.5, 130, 90.5, 170, 114.5, 170); // Triángulo 5
  fill(28,142,3);
  triangle(22.5, 140, 10.5, 180, 34.5, 180); // Triángulo 1
  triangle(42.5, 140, 30.5, 180, 54.5, 180); // Triángulo 2
  triangle(62.5, 140, 50.5, 180, 74.5, 180); // Triángulo 3
  triangle(82.5, 140, 70.5, 180, 94.5, 180); // Triángulo 4
  triangle(102.5, 140, 90.5, 180, 114.5,180); // Triángulo 5
  fill(49,173,23);
  triangle(22.5, 150, 10.5, 190, 34.5, 190); // Triángulo 1
  triangle(42.5, 150, 30.5, 190, 54.5, 190); // Triángulo 2
  triangle(62.5, 150, 50.5, 190, 74.5, 190); // Triángulo 3
  triangle(82.5, 150, 70.5, 190, 94.5, 190); // Triángulo 4
  triangle(102.5, 150, 90.5, 190, 114.5, 190); // Triángulo 5

}
  
