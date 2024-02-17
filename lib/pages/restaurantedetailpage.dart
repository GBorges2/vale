import 'package:flutter/material.dart';
import 'package:untitled/model/local.dart';
import 'package:untitled/pages/detailpage.dart';
import 'package:url_launcher/url_launcher.dart';

class RestauranteDetail implements DetailPage {
  @override
  Widget getDatailPage(Local local) {
    return RestauranteDetailPage(local);
  }
}

class RestauranteDetailPage extends StatelessWidget {
  final Local local;

  RestauranteDetailPage(this.local);

  void abrirGoogleMaps(String long, String lat) async {
    var urlMap =
        "https://www.google.com/maps/search/?api=1&query=${long},${lat}";
    await launchUrl(Uri.parse(urlMap));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a794d),
      appBar: AppBar(
        title: Text(
          local.nome,
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 180,
                    child: Image.asset(
                      local.urlImagem,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      local.cidade,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        abrirGoogleMaps(local.lat, local.long);
                      },
                      icon: Icon(Icons.location_on, color: Colors.white,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    local.endereco,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    maxLines: 10,
                  ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      local.telefone,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      maxLines: 10,
                    ))
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    local.horario,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    maxLines: 10,
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    local.descricao,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    maxLines: 10,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
