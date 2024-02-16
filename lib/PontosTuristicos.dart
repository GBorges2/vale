import 'package:flutter/material.dart';
import 'package:untitled/model/local.dart';

class Page_PontosTuristicos extends StatefulWidget {
  const Page_PontosTuristicos({super.key});

  @override
  State<Page_PontosTuristicos> createState() => _Page_PontosTuristicos();
}

class _Page_PontosTuristicos extends State<Page_PontosTuristicos> {
  List<Local> _pontosTuristicos = [];

  @override
  //void initState(){
  //  _pontosTuristicos.add(Local(urlImagem: urlImagem, cidade: cidade, nome: nome, endereco: endereco, telefone: telefone, horario: horario, descricao: descricao));
  //  _pontosTuristicos.add(Local(urlImagem: urlImagem, cidade: cidade, nome: nome, endereco: endereco, telefone: telefone, horario: horario, descricao: descricao));
  //  _pontosTuristicos.add(Local(urlImagem: urlImagem, cidade: cidade, nome: nome, endereco: endereco, telefone: telefone, horario: horario, descricao: descricao));
  //  _pontosTuristicos.add(Local(urlImagem: urlImagem, cidade: cidade, nome: nome, endereco: endereco, telefone: telefone, horario: horario, descricao: descricao));
  //  _pontosTuristicos.add(Local(urlImagem: urlImagem, cidade: cidade, nome: nome, endereco: endereco, telefone: telefone, horario: horario, descricao: descricao));
  //  _pontosTuristicos.add(Local(urlImagem: urlImagem, cidade: cidade, nome: nome, endereco: endereco, telefone: telefone, horario: horario, descricao: descricao));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pontos turísticos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff1a794d),
      ),
      body: SafeArea(
        child: ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: Expanded(
              child: Column(
                children: [
                  Builder(builder: (context) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Text('beira rio')],
                    );
                  })
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
