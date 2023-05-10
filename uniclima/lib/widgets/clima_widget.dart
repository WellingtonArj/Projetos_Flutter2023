import 'package:flutter/material.dart';
import 'package:uniclima/model/clima_model.dart';
import 'package:uniclima/constants/text_constants.dart';

class ClimaWidget extends StatelessWidget {
  final ClimaModel climaModel;

  const ClimaWidget({Key? key, required this.climaModel}) : super(key: key);

  String primeiraMaiuscula(String s) =>
      '${s[0].toUpperCase()}${s.substring(1)}';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://openweathermap.org/img/wn/${climaModel.icone}@2x.png',
          fit: BoxFit.fill,
          width: 120,
        ),
        Text(
          '${climaModel.temperatura.toStringAsFixed(0)} ºC',
          style: const TextStyle(fontSize: 50),
        ),
        Text(
          primeiraMaiuscula(climaModel.descricao),
          style: const TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 20),
        Text(
          '${TextConstants.min}: ${climaModel.tempMin} ºC',
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '${TextConstants.max}: ${climaModel.tempMax} ºC',
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '${TextConstants.sensacaoTerm}: ${climaModel.sensacaoTermica} ºC',
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '${TextConstants.umidadeRel}: ${climaModel.umidade}%',
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '${TextConstants.visibilidade}: ${climaModel.visibilidade} Km',
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '${TextConstants.pressaoAtm}: ${climaModel.pressao}hPa',
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
