import 'package:flutter/material.dart';
import 'package:untitled/model/local.dart';
import 'package:untitled/pages/detailpage.dart';
import 'package:untitled/pages/restaurantedetailpage.dart';

class LocalListPage extends StatefulWidget {
  LocalListPage({super.key, required this.locais, required this.titulo, required this.detailPage});

  late List<Local> locais;
  late String titulo;
  late DetailPage detailPage;

  @override
  State<LocalListPage> createState() => _LocalListPage();
}

class _LocalListPage extends State<LocalListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.titulo,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => widget.detailPage.getDatailPage(widget.locais[index]))
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0,  bottom: 2.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                  ),
                  child: Row(
                    children: [
                      Container(
                          width: 100,
                          height: 80,
                          child: Image.asset(
                            widget.locais[index].urlImagem,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.locais[index].nome,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              widget.locais[index].descricao,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: widget.locais.length,
        ),
      ),
    );
  }
}
