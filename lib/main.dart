import 'package:flutter/material.dart';
import 'package:untitled/model/local.dart';
import 'package:untitled/pages/restaurantedetailpage.dart';
import 'pages/locallistpage.dart';
import 'sobreNos.dart';
import 'trilhas.dart';
import 'package:untitled/PontosTuristicos.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Local> _restaurantes = [
    Local(
        urlImagem: 'assets/img/restaurantes/torten.jpg',
        cidade: 'Pomerode',
        nome: 'Restaurante Torten Paradies',
        endereco: 'Rua XV de Novembro, 350',
        telefone: '(47) 3387-0950',
        horario: 'Terça à Domingo das 7h às 19h',
        descricao:
            'Confeitaria com bolos brasileiros e alemães, além de doces, cafés, sorvetes e um buffet casual para almoço.'),
    Local(
        urlImagem: 'assets/img/restaurantes/bierwein.jpg',
        cidade: 'Pomerode',
        nome: 'Bierwein Pizzaria e Restaurante',
        endereco: 'Rua Hermann Weege, 160',
        telefone: '(47) 3306-6305',
        horario: 'Terça à Domingo das 17h às 23h',
        descricao:
            'Pratos da culinária alemã como eisbein e marreco, mais salmão, picanha e pizza, em espaço rústico com varanda.'),
    Local(
        urlImagem: 'assets/img/restaurantes/container.webp',
        cidade: 'Blumenau',
        nome: 'Container Pub',
        endereco: 'Rua Gustavo Zimmerman, 4764',
        telefone: '(47) 3285-7185',
        horario: 'Terça à Domingo das 18h às 1h',
        descricao:
            'Fábrica de cerveja artesanal inglesa mantém gastrobar intimista fino de menu europeu, à vista dos tonéis.'),
    Local(
        urlImagem: 'assets/img/restaurantes/mortadella.jpg',
        cidade: 'Blumenau',
        nome: 'Mortadella Ristorante & Pizzeria',
        endereco: 'Av. Martin Luther, 1001',
        telefone: '(47) 3037-6060',
        horario: 'Quinta à Domingo das 11h30 às 00h',
        descricao:
            'Pizzas artesanais, além de massas, bruschettas, vinhos e cervejas, em casa rústica com arte e luz natural.'),
    Local(
        urlImagem: 'assets/img/restaurantes/biergarten.jpeg',
        cidade: 'Pomerode',
        nome: 'Biergarten Pomerânia',
        endereco: 'XV de Novembro, 367',
        telefone: '(47) 3306-3995',
        horario: 'XXX',
        descricao:
            'Restaurante com comida alemã e o chefe mais alemão do Brasil.'),
    Local(
        urlImagem: 'assets/img/restaurantes/BierDamm.jpg',
        cidade: 'Timbó',
        nome: 'BierDamm Restaurante',
        endereco: 'Av. Getúlio Vargas, 211',
        telefone: '(47) 3091-0196',
        horario: 'XXX',
        descricao:
            'Pratos típicos da culinária ítalo-germânica, além de chopes da região e vinhos selecionados'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a794d),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff1a794d),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Color((0xff1a794d)),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: SizedBox(
                child: Container(
                    height: 180,
                    child: Image.asset(
                      'assets/img/logo.jpeg',
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocalListPage(
                              locais: _restaurantes,
                              titulo: "Restaurantes",
                              detailPage: RestauranteDetail()),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(093824),
                      fixedSize: Size(150, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restaurant, color: Colors.white, size: 45),
                          Text('Restaurantes Típicos',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocalListPage(
                              locais: _restaurantes,
                              titulo: "Festas Típicas",
                              detailPage: RestauranteDetail()),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(093824),
                      fixedSize: Size(150, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.celebration_outlined,
                              color: Colors.white, size: 45),
                          Text('Festas ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center),
                          Text('Típicas',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page_PontosTuristicos()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(093824),
                        fixedSize: Size(150, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.church_outlined,
                                color: Colors.white, size: 45),
                            Text('Pontos Turísticos',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page_Trilhas()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(093824),
                        fixedSize: Size(150, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_bike_rounded,
                                color: Colors.white, size: 45),
                            Text('Trilhas e ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center),
                            Text('Ciclo Turísmo',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(093824),
                        fixedSize: Size(150, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.wb_sunny_outlined,
                                color: Colors.white, size: 45),
                            Text('Clima',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page_SobreNos()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(093824),
                        fixedSize: Size(150, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.group, color: Colors.white, size: 45),
                            Text('Sobre nós',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
