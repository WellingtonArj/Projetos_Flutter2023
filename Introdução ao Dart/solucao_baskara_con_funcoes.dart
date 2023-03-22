import 'dart:math';

void main() {
    //eq. de exemplo: 2x² - 5x - 7 = 0

  double a = 2;
  double b = -5;
  double c = -7;
  double delta = calculaDelta(a, b, c);
  print("Delta = $delta");
  
  if (delta > 0) {
    print("X' = ${raizPositiva(a, b, delta)}");
    print("X\" = ${raizNegativa(a, b, delta)}");
  } else {
    print("Não existem raizes reais para esta equação");
  }
}


double calculaDelta(double a, double b, double c) {
  double delta = (b * b) - 4 * a * c;
  return delta;
}

double raizPositiva(double a, double b, double delta) {
  double x1 = (-b + sqrt(delta)) / (2 * a);
  return x1;
}

double raizNegativa(double a, double b, double delta) {
  double x2 = (-b - sqrt(delta)) / (2 * a);
  return x2;
}
