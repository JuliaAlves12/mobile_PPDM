import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  String texto;

  Titulo({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 25,
      ), 
      child: Text(
        texto,
        textAlign: TextAlign.center, 
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 184, 64, 104),
          letterSpacing: 2,
          fontFamily: 'Serif',
        ),
      ),
    );
  }
}
