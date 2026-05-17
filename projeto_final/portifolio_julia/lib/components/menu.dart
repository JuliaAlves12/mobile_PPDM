import 'package:flutter/material.dart';
// Os imports garantem que o Menu encontre os arquivos na pasta pages
import 'package:portifolio_julia/pages/telainicial.dart';
import 'package:portifolio_julia/pages/projetos.dart';
import 'package:portifolio_julia/pages/redes.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // BOTÃO HOME
          IconButton(
            icon: Icon(Icons.home, color: Color(0xFFB84068)),
            onPressed: () => Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const TelaInicial())
            ),
          ),
          
          // BOTÃO PROJETOS (Ajustado para o nome da classe: Projetos)
          IconButton(
            icon: Icon(Icons.folder, color: Color(0xFFB84068)),
            onPressed: () => Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const Projetos())
            ),
          ),

          // BOTÃO REDES (Ajustado para o nome da classe: Redes)
          IconButton(
            icon: Icon(Icons.share, color: Color(0xFFB84068)),
            onPressed: () => Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const Redes())
            ),
          ),
        ],
      ),
    );
  }
}