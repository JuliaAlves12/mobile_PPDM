import 'package:flutter/material.dart';
import 'package:honeycoffee/components/appbarcustom.dart';
import 'package:honeycoffee/components/botao.dart';
import 'package:honeycoffee/components/logo.dart';
import 'package:honeycoffee/components/titulo.dart';
import 'package:honeycoffee/pages/telaprodutos.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarcustom(nome: "Produtos"),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Titulo(valorDigitado: "HoneyCoffee"),
            SizedBox(height: 10),
            Titulo(
              valorDigitado: "Seja Bem-Vindo(a) à melhor Cafeteria da cidade!",
            ),
            SizedBox(height: 10),
            Logo(),
            SizedBox(height: 40),
            Botao(pagina: Telaprodutos()),
          ],
        ),
      ),
    );
  }
}
