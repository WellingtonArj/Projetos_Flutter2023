void main() {
  
  /**
   * 4 tipos de loops (laços de erpetição): for, while, do..while e foreach
   * o foreach vamos ver depois que trabalharmos com listas
   * 
   * É importante lembrar que:
   *  i++  => é o mesmo que i = i + 1
   *  i+=3 => é o mesmo que i = i + 3
   *  i--  => é o mesmo que i = i - 1
   *  i/=4 => é o mesmo que i = i / 4
   * 
   * */
  
  //for
  //condição de inicio; condição de parada; condição de incremento
 
  print("Brincando com o for...:");
  
  for (int i = 10; i >= 0; i--) {
    print("i = $i");
  }
  
  
  print("");
  
  //while:
  print("Brincando com While...");
  
  int j = 0; // variável de controle do while
  while (j < 20) { //condição de parada
    print("j = $j");
    
    if (j % 2 == 0) { //podemos ter condições de incremento
      j+=3;
    }
    else {
      j++;
    }
  }
  
  print("");
  
  //while:
  print("Brincando com do..While...");
  
  int k = 0;
  do {
    print("k = $k");
    k += 4;
  } while (k <= 32);
  
  print("...Fim...");
}