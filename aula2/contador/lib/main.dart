import 'package:flutter/material.dart';

void main() {
  runApp(TelaContador());
}

class TelaContador extends StatefulWidget {
  const TelaContador({super.key});

  @override
  State<TelaContador> createState() => _TelaContadorState();
}

class _TelaContadorState extends State<TelaContador> {
  // Aqui você faz a sua lógica
  int valor = 0;

  void adicionar(){
    setState(() { //função para alterar o valor de uma variável
      valor++; // aumenta valor em 1.
    });
  }

  void diminuir(){
    setState(() { // diminui valor em 1
      valor--;
    });
  }

  void resetar(){
    setState(() { // coloca a variavel em 0
      valor = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bem vindo ao app Contador", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 30),), // titulo da appbar
          backgroundColor: const Color.fromARGB(255, 192, 99, 130), // cor de fundo
          centerTitle: true, //Centralização do titulo
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$valor", style: TextStyle(color: const Color.fromARGB(255, 192, 99, 130), fontSize: 50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: adicionar, child: Icon(Icons.add)),
                TextButton(onPressed: diminuir, child: Icon(Icons.remove)),
                TextButton(onPressed: resetar, child: Icon(Icons.refresh)),
              ],
            ),
            Image.network("https://m.media-amazon.com/images/I/31XbiKT+gWL._AC_UF894,1000_QL80_.jpg", width: 450,)
          ],
        ),
      ),
    );
  }
}