//escopo de variáveis


//escopo GLOBAL
double x = 10;
double y = 20;

void main() {
  //escopo local
  double k = 20;
  double l = 30;
  
  print(somar(x, y));
  print(somar(k, l));
  mostraValores();
  
  
  //print(multiplica(3, 7)); //neste ponto a função ainda não está declarada
  
  double multiplica(double a, double b) {
    return a * b;
  }
  
  print(multiplica(3, 7)); 
  
}


double somar(double a, double b) {
  return a + b;
}

void mostraValores() {
  //print("K = $k"); //não posso fazer isso pois o "k" só existe no "main"
  //print("L = $l"); //não posso fazer isso pois o "l" só existe no "main"
  print("X = $x");
  print("Y = $y");
  //print(multiplica(3, 7)); //não posso pois a função de multiplciação é local do main
}