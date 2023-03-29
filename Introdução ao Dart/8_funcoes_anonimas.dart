//funções anônimas

void main() {
   
  criaBotao(
    texto: "Salvar",
    cor: "Green",
    acao: () {
      print("Salvando...");
    }
  );
}


void criaBotao({required String texto, 
                required Function acao, 
                int altura = 3, 
                int largura = 10, 
                String cor = "Blue"}) {
  
  print("...Estou criando um botão...");
  print(" Texto: $texto");
  print(" Altura: $altura");
  print(" Largura: $largura");
  print(" Cor: $cor");
  print(" Função de ação: ");
  acao();
  print("...Botão criado...");
}