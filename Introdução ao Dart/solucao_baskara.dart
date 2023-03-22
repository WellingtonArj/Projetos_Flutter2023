//resolução do mini desafio - Cálculadora de Bhaskara

import 'dart:math';

void main() {
  double a, b, c, delta, x1, x2;

  //eq. de exemplo: 2x² - 5x - 7 = 0

  a = 2;
  b = -5;
  c = -7;

  //cálculo do Delta:
  delta = (b * b) - 4 * a * c;

  print("Delta = $delta");

  if (delta < 0) {
    print("Não exitem soluções reais para essa equação");
    return;
  }

  x1 = (-b + sqrt(delta)) / (2 * a);
  x2 = (-b - sqrt(delta)) / (2 * a);

  print("X' = $x1");
  print("X\" = $x2");
}