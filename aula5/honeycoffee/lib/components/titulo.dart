import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  String valorDigitado;
  Titulo({super.key, required this.valorDigitado});

  @override
  Widget build(BuildContext context) {
    return Text(
      valorDigitado,
      style: TextStyle(
        color: const Color.fromARGB(255, 129, 7, 93),
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    );
  }
}
