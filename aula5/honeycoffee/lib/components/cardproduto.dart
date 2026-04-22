import 'package:flutter/material.dart';

class Cardproduto extends StatelessWidget {
  String imagem;
  String nome;
  double valor;
  Cardproduto({
    super.key,
    required this.imagem,
    required this.nome,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 226, 246),
      child: ListTile(
        leading: Image.network(imagem, width: 80), // vai ficar na esquerda
        title: Text(
          nome,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text(
          valor.toStringAsFixed(2),
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
