import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _todoList = [];
  final _todoController = TextEditingController();

  Future<File> _abreArquivo() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File('${diretorio.path}/todoList.json');
  }

  Future<String?> _lerDados() async {
    try {
      final arquivo = await _abreArquivo();
      return arquivo.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> _salvarDados() async {
    String dados = json.encode(_todoList);
    final arquivo = await _abreArquivo();
    return arquivo.writeAsString(dados);
  }

  void adicionaTarefa() {
    Map<String, dynamic> novoTodo = {};
    novoTodo['tarefa'] = _todoController.text;
    novoTodo['status'] = false;
    _todoController.text = '';
    _todoList.add(novoTodo);
    _salvarDados();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
          child: Row(children: [
            Expanded(
                child: TextField(
              controller: _todoController,
              maxLength: 90,
              decoration: const InputDecoration(labelText: 'Nova Tarefa'),
            )),
            const SizedBox(width: 10),
            SizedBox(
              height: 35,
              width: 35,
              child: FloatingActionButton(
                child: const Icon(Icons.save),
                onPressed: () {
                  if (_todoController.text.isEmpty) {
                    //o usuário não digitou nada
                    //paramos aqui
                  } else {
                    adicionaTarefa();
                  }
                },
              ),
            )
          ]),
        )
      ]),
    );
  }
}