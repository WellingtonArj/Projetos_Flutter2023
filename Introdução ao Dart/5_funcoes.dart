//FUNÇÕES

/*
   * O objetivo de uma função é permitir execução de código mais fácilmente
   * além de reutilização de lógica e separação correta das coisas.
   * 
   * Existem, essencialmente, 3 variações para as funções:
   * 
   *  - Que não retornam nada (void)
   *  - Que retormam (tipadas)
   *  - Com ou sem entrada de parâmetros
   * 
   * */

void main() {
  falarOlaMundo();
  falarNome("Thiago");
  falarNomeCompleto("Thiago", "Traue");

  int b = 10;
  int h = 7;
  double area = areaTriangulo(b, h);
  print("A área do triângulo com base de $b e altura de $h é: $area");

  print("Nete contexto o PI vale ${valorPi()}");
}

//função sem entrada de parâmetros e sem nenhum retorno:
void falarOlaMundo() {
  print("Olá mundão!");
}

//função sem retorno COM entrada de parâmetro:
void falarNome(String nome) {
  print("Olá $nome, seja muito bem-vindo(a)!");
}

//função com entrada de mais  deum parâmetro:
void falarNomeCompleto(String nome, String sobrenome) {
  print("Olá $nome $sobrenome, tudo bem?!");
}

//função com retorno e com entada de parâmetros
double areaTriangulo(int base, int altura) {
  double area = (base * altura) / 2;
  return area;
}

//função sem entrada de parâmetro mas com retorno
double valorPi() {
  return 3.1415;
}
