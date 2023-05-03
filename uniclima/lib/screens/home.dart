import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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

  carregaClima() async {

    const String _apiURL = 'api.openweathermap.org'; //Link da API
    const String _path = '/data/2.5/weather';
    const String _appId = 'xxxxxx'; //Coloque aqui a SUA chave de API
    const String _units = 'metric';
    const String _lang = 'pt_br';

    final _parametros = {
      'q' : _cidadeSelecionada,
      'appid': _appId,
      'units': _units,
      'lang': _lang
    };

    final climaResponse = await http.get(Uri.https(_apiURL, _path, _parametros));

    //apenas para fins de depuração:
    print('Obtendo dados da API....:' + climaResponse.request!.url.toString());

    //paramos aqui... continuamos na semana vindoura.. :D

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_cidadeSelecionada),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DropdownSearch<String>(
                items: _cidades,
                selectedItem: 'São Paulo',
                popupProps: const PopupProps.menu(),
                onChanged: (value) {
                  setState(() {
                    _cidadeSelecionada = value!;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
