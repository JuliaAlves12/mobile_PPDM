import 'package:flutter/material.dart';

class TelaInterativa extends StatefulWidget {
  const TelaInterativa({super.key});

  @override
  State<TelaInterativa> createState() => _TelaInterativaState();
}

class _TelaInterativaState extends State<TelaInterativa> {
  //code aqui a sua lógica
  List projetos = ["projetos 1", "projetos 2", "projetos 3"];

  int index = 0; //variavel que ira observar a lista

  void mudar() {
    setState(() {
      index++;
      if (index >= projetos.length) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela Interativa")),
      body: Center(
        child: Column(
          children: [
            Text(projetos[index]),
            TextButton(onPressed: mudar, child: Text("Mudar")),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.4,
              color: const Color.fromARGB(255, 114, 26, 129),
            ),
          ],
        ),
      ),
    );
  }
}
