void main() {
  
  List<String> compras = ["Nutella", "Alface", "Salgadinho", "Miojo", "Amaciante"];
  
  print(compras.length);
  
//   print(compras[0]);
//   print(compras[1]);
//   print(compras[4]);
  
  for (int i = 0; i < compras.length; i++) {
    print(compras[i]);
  }
  
  compras.add("Maçã");
  
  print(compras[5]);
  
  compras.removeAt(0);
  
  print(compras);
  
  List<dynamic> bla = [24, "Oi", true];
  print(bla);
}