import 'package:flutter/material.dart';
import 'package:honeycoffee/components/cardproduto.dart';

class Telaprodutos extends StatelessWidget {
  const Telaprodutos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produtos")),
      body: ListView(
        children: [
          Cardproduto(
            imagem:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm4ojceM4-5RNc6z7393Q_gQojz-5V749Puw&s",
            nome: "Café Expresso",
            valor: 30,
          ),
          Cardproduto(
            imagem:
                "https://www.receitasnestle.com.br/sites/default/files/srh_recipes/5dd4e59cc8f3618ae73bb37164c951fe.jpg",
            nome: "Capuccino",
            valor: 27.90,
          ),
          Cardproduto(
            imagem:
                "https://foodisafourletterword.com/wp-content/uploads/2021/10/Easy_Organic_Vietnamese_Coffee_Recipe.jpg",
            nome: "Iced Coffee",
            valor: 34.90,
          ),
        ],
      ),
    );
  }
}
