import 'package:flutter/material.dart';

class Page_Trilhas extends StatefulWidget {
  const Page_Trilhas({super.key});

  @override
  State<Page_Trilhas> createState() => _Page_Trilhas();
}

class _Page_Trilhas extends State<Page_Trilhas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trilhas',
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
                      Text('Trilha do morro azul')
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