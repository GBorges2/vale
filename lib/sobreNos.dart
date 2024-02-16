import 'package:flutter/material.dart';

class Page_SobreNos extends StatefulWidget {
  const Page_SobreNos({super.key});

  @override
  State<Page_SobreNos> createState() => _Page_SobreNos();
}

class _Page_SobreNos extends State<Page_SobreNos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sobre nós',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff1a794d),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            children: [Builder(
                builder: (context) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Leo')
                    ],
                  );
                }
            )],
          ),
        ),
      ),
    );
  }
}