import 'package:flutter/material.dart';
import 'package:honeycoffee/components/appbarcustom.dart';
import 'package:honeycoffee/components/cardproduto.dart';

class Telaprodutos extends StatelessWidget {
  const Telaprodutos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarcustom(nome: "Produtos"),
      body: ListView(
        children: [
          Cardproduto(
            imagem:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm4ojceM4-5RNc6z7393Q_gQojz-5V749Puw&s",
            nome: "Café Expresso",
            valor: 30.99,
          ),
          Cardproduto(
            imagem:
                "https://www.receitasnestle.com.br/sites/default/files/srh_recipes/5dd4e59cc8f3618ae73bb37164c951fe.jpg",
            nome: "Capuccino",
            valor: 27.90,
          ),
          Cardproduto(
            imagem:
                "https://cafebarista.ca/cdn/shop/articles/comment-faire-un-cafe-glace-553038.jpg?v=1737725080",
            nome: "Iced Coffee",
            valor: 34.90,
          ),
        ],
      ),
    );
  }
}
