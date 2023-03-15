void main() {
  double x = 8;
  double y = 2;
  double z = 3;
  
  double soma = x + y;
  double sub = x - y;
  double mult = x * y;
  double div = x / y;
  
  print("Sendo X = $x e Y = $y, temos que:");
  print("A soma é $soma");
  print("A subtração é $sub");
  print("A multiplicação é $mult");
  print("A divisão é $div");
  
  double conta = x + y * z; //30 ou 14???
  print(conta); //14 pois o dart respeita a matemática
  conta = (x + y) * z; //agora sim daria 30, ou seja, forçamos a soma primeira
  print(conta);
  
  //brincando com a simplificação das operações básicas de incremento e decremento:
  int i = 4;
  print(i);
  i++; //é o mesmo que i = i + 1
  print(i);
  i += 2; //neste caso é o mesmo que i = i + 2
  print(i);
  i--; //é o mesmo que i = i - 1
  print(i);
  
  
  String a = "2";
  String b = "4";
  
  print(a + b); //a "+" com valores tipo String, concatena (junta)
  
  //resto da divisão:
  int w = 123124;
  int resultado = w % 3; //quero saber qual o resto da divsão de w por 3
  print(resultado);
}
