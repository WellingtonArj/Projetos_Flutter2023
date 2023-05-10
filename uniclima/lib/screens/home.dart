import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as http;
import 'package:uniclima/constants/api_constants.dart';
import 'package:uniclima/constants/text_constants.dart';
import 'package:uniclima/model/geolocalizacao_model.dart';
import 'package:uniclima/widgets/clima_widget.dart';
import '../model/clima_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    carregaClima();
  }

  final List<String> _cidades = [
    'Aracaju',
    'Belém',
    'Belo Horizonte',
    'Boa Vista',
    'Brasilia',
    'Campo Grande',
    'Cuiabá',
    'Curitiba',
    'Florianópolis',
    'Fortaleza',
    'Goiânia',
    'João Pessoa',
    'Macapá',
    'Maceió',
    'Manaus',
    'Natal',
    'Palmas',
    'Porto Alegre',
    'Porto Velho',
    'Recife',
    'Rio Branco',
    'Rio de Janeiro',
    'Salvador',
    'São Luís',
    'São Paulo',
    'Teresina',
    'Vitória'
  ];

  String _cidadeSelecionada = 'São Paulo';
  late double latitude;
  late double longitude;
  late Geolocalizacao geolocalizacao;
  late ClimaModel climaModel;
  bool isLoading = false;

  carregaGeolocalizacao() async {
    setState(() {
      isLoading = true;
    });

    const String apiURL = ApiConstants.apiUrl;
    const String path = ApiConstants.geoPath;
    const String appId = ApiConstants.apiKey;

    final params = {'q': _cidadeSelecionada, 'appid': appId};

    final geoResponse = await http.get(Uri.https(apiURL, path, params));

    //print('Obtendo dados da Geolocalização....:' + geoResponse.request!.url.toString());

    if (geoResponse.statusCode == 200) {
      geolocalizacao = Geolocalizacao.fromJson(jsonDecode(geoResponse.body));
    }
  }

  carregaClima() async {
    await carregaGeolocalizacao();

    const String apiURL = ApiConstants.apiUrl;
    const String path = ApiConstants.weatherPath;
    const String appId = ApiConstants.apiKey;
    const String units = ApiConstants.units;
    const String lang = ApiConstants.lang;

    final parametros = {
      'lat': geolocalizacao.latitude.toString(),
      'lon': geolocalizacao.longitude.toString(),
      'appid': appId,
      'units': units,
      'lang': lang
    };

    final climaResponse = await http.get(Uri.https(apiURL, path, parametros));

    //print('Obtendo dados da API....:' + climaResponse.request!.url.toString());

    if (climaResponse.statusCode == 200) {
      climaModel = ClimaModel.fromJson(jsonDecode(climaResponse.body));
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_cidadeSelecionada), centerTitle: true),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  DropdownSearch<String>(
                    items: _cidades,
                    selectedItem: 'São Paulo',
                    popupProps: const PopupProps.menu(),
                    onChanged: (value) {
                      setState(() {
                        _cidadeSelecionada = value!;
                        carregaClima();
                      });
                    },
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: isLoading
                            ? const CircularProgressIndicator(
                                strokeWidth: 5,
                                valueColor: AlwaysStoppedAnimation(Colors.blue),
                              )
                            : climaModel != null
                                ? ClimaWidget(climaModel: climaModel)
                                : const Text(TextConstants.semDados),
                      )
                    ],
                  ))
                ]))));
  }
}
