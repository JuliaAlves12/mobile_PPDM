import 'package:flutter/material.dart';
import 'package:portifolio_julia/components/titulo.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  List<String> fotos = [
    'images/imagem_1.jpeg',
    'images/imagem_2.jpeg',
    'images/imagem_3.jpeg',
  ];

  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 245),
      body: Column(
        children: [
          Titulo(texto: "Portfólio"),

          Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 110,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(fotos[indice]),
              ),

              SizedBox(width: 15),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    indice = (indice + 1) % fotos.length;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color.fromARGB(255, 184, 64, 104),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Mudar\nFoto',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          Spacer(),

          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Color.fromARGB(127, 255, 255, 255),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.home, color: Color.fromARGB(255, 184, 64, 104)),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Color.fromARGB(255, 184, 64, 104),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.folder_special,
                      color: Color.fromARGB(255, 184, 64, 104),
                    ),
                    Text(
                      "Projetos",
                      style: TextStyle(
                        color: Color.fromARGB(255, 184, 64, 104),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Color.fromARGB(255, 184, 64, 104)),
                    Text(
                      "Redes",
                      style: TextStyle(
                        color: Color.fromARGB(255, 184, 64, 104),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
