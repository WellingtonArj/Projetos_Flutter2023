void main() {
  saudar("Thiago", sobrenome: "Traue");
  saudar("Guilherme");

  falarOi("Helder", "Cândido");
  falarOi("Antonio", "Quadro", mostraHorario: true);

  double area = calculaAreaTriangulo("Tri Legal", base: 3, altura: 10);

  print("A área deste triângulo é $area");
  
  print("---");
  
  criaBotao(texto: "Salvar");
  criaBotao(texto: "Excluir", cor: "Vermelho");
  
  //os parâmtros quando declarados dentro de {} podem ser acionados em qualquer ordem:
  criaBotao(
    cor: "Vermelho",
    altura: 3,
    largura: 21,
    texto: "Excluir"
  );
  
  criaBotao(
    texto: "Novo Registro", 
    cor: "Verde",
    largura: 10
  );
}

void saudar(String nome, {String sobrenome = "Silva"}) {
  print("Olá $nome $sobrenome, tudo bem?! Seja bem-vindo(a)!");
}

void falarOi(String nome, String sobrenome, {bool mostraHorario = false}) {
  print("Olá $nome $sobrenome!");

  if (mostraHorario) {
    print("Agora são ${DateTime.now()}");
  }
}

double calculaAreaTriangulo(String nomeTriangulo, {required int base, required int altura}) {
  print("Calculando a área do triângulo $nomeTriangulo");
  double area = (base * altura) / 2;
  return area;
}

void criaBotao({required String texto, int altura = 20, int largura = 80, String cor = "Azul"}) {
  print("Hmm estou criando um botão...");
  print("Esse botão tem:");
  print(" - Texto dentro do Botão: $texto");
  print(" - Altura: $altura");
  print(" - Largura: $largura");
  print(" - Cor: $cor");
  print(">> Botão criado!");
} 