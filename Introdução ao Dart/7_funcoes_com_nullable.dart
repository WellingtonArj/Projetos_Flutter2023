//funcões com nullable
//null safety

void main() {
  falarNome(
    nome: "Thiago",
    sobrenome: "Traue"
  );
  
  dizerNome(
    nome: "Marcelo",
  );
}

void falarNome({required String nome, String? sobrenome}) {
//   if (sobrenome == null) {
//     print("Olá $nome!");
//   } else {
//     print("Olá $nome, $sobrenome!");
//   }
  //é o mesmo que:
  
  print(sobrenome == "" ? "Olá $nome" : "Olá $nome $sobrenome");
}

//convertendo uma variável "nullable" em "non nullable" (anulável para não anluável)
void dizerNome({required String nome, String? sobrenome}) {
  String sobre = sobrenome ?? "Oliveira";
  print("Olá $nome $sobre");
}