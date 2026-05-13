import 'package:flutter/material.dart';
import 'package:portifolio_julia/pages/telaInicial.dart';

void main() {
  runApp(const Portifolio());
}

class Portifolio extends StatelessWidget {
  const Portifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}
