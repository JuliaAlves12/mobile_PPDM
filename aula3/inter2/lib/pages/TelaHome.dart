import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Fundo cinza claro
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.person_outline, color: Colors.orange),
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined, color: Colors.orange),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Seção de Saldo
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Saldo em conta", style: TextStyle(fontSize: 16, color: Colors.grey)),
                  SizedBox(height: 8),
                  Text("R\$ 1.250,00", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            
            const SizedBox(height: 10),

            // Grid de Atalhos (Pix, Pagamentos, etc)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _itemMenu(Icons.pix, "Pix"),
                  _itemMenu(Icons.barcode_reader, "Pagamentos"),
                  _itemMenu(Icons.trending_up, "Investir"), 
                  _itemMenu(Icons.credit_card, "Cartões"),
                  _itemMenu(Icons.phone_android, "Recarga"),
                  _itemMenu(Icons.card_giftcard, "InterShop"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Card de Cartão de Crédito
            _cardInformativo("Cartão", "Fatura atual", "R\$ 450,20"),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para os botões do grid
  Widget _itemMenu(IconData icone, String titulo) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icone, color: Colors.orange, size: 30),
          const SizedBox(height: 8),
          Text(titulo, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  // Widget auxiliar para os cards grandes
  Widget _cardInformativo(String titulo, String subtitulo, String valor) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.credit_card, color: Colors.orange),
              const SizedBox(width: 10),
              Text(titulo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 15),
          Text(subtitulo, style: const TextStyle(color: Colors.grey)),
          Text(valor, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange)),
        ],
      ),
    );
  }
}