class Geolocalizacao {
  final String cidade;
  final double latitude;
  final double longitude;

  Geolocalizacao({
    required this.cidade,
    required this.latitude,
    required this.longitude});

  factory Geolocalizacao.fromJson(List<dynamic> json) {
    return Geolocalizacao(
      cidade: json[0]["name"],
      latitude: json[0]["lat"],
      longitude: json[0]["lon"]
    );
  }
}