void main() {
  int idade = 17;

  if (idade >= 18) {
    //o resultado deve ser sempre booelano (true ou false)
    print("Pode entrar na baladinha!"); //se a condição der true, entra aqui
  } else {
    //"senão"
    print("Não pode entrar na baladinha");
  }

  //operações lógicas:

  print(1 == 2); //falso
  print(1 < 2); //true
  print(1 <= 2); //true
  print(2 <= 2); //true
  print(2 < 2); //false
  print(3 >= 1); //true
  print(3 > 4); //false

  /*
   * Pensando em um sistema de notas, onde o aluno aprova com nota >= 6
   * Mas se não tirar isso, realiza a DP a qual precisa tirar ao menos 7.
   * 
   * */

  double nota = 2;
  double dp = 2;

  if (nota >= 6) {
    print("Aprovado");
  } else if (nota >= 3.5 && dp >= 7) {
    print("Aprovado com a nota da DP");
  } else if (nota >= 3.5) {
    print("Reprovado com DP");
  } else {
    print("Reprovado");
  }
  
  //condição ternária
  // condição ? <valor se verdadeiro> : valor se falso
  bool fumante = false;
  
//   if (fumante) {
//     print("Fuma");
//   } else {
//     print("Não fuma!");
//   }
  
  print(fumante ? "Fuma" : "Não fuma");
  
}
