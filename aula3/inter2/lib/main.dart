import 'package:flutter/material.dart';
import 'package:inter2/pages/telainicial.dart';

void main() {
  runApp(Intermediaria());
}

class Intermediaria extends StatelessWidget {
  const Intermediaria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Telainicial(),
    );
  }
}