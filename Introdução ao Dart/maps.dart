void main() {
  
  Map<int, String> teste = {
    1 : "Olá",
    2 : "Tchau",
    5 : ":)",
    3 : ":(",
    7 : "Olá"
  };
  
  print(teste);
  
  Map<String, double> notas = {};
  
  notas["Antonio"] = 10;
  notas["Marcelo"] = 9;
  notas["Elias"] = 8.5;
  notas["Traue"] = 6;
  
  print(notas["Marcelo"]);
  
  notas["Marcelo"] = 10;
  
  print(notas["Marcelo"]);
  
}