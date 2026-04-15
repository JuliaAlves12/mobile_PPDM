import 'package:flutter/material.dart';
import 'package:honeycoffee/components/logo.dart';
import 'package:honeycoffee/components/titulo.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bem-vindo")),
      body: Center(
        child: Column(
          children: [
            Titulo(valorDigitado: "HoneyCoffee"),
            Titulo(
              valorDigitado: "Seja Bem-Vindo(a) à melhor Cafeteria da cidade!",
            ),
            Logo(),
          ],
        ),
      ),
    );
  }
}
