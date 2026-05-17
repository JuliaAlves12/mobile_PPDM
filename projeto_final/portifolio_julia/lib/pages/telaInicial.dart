import 'package:flutter/material.dart';
import 'package:portifolio_julia/components/titulo.dart';
import 'package:portifolio_julia/components/menu.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  List<String> fotos = [
    'images/imagem_1.jpeg',
    'images/imagem_2.jpeg',
    'images/imagem_3.jpeg'
  ];
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 245),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Titulo(texto: "Portfólio"),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
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
                      elevation: 2,
                    ),
                    child: Text("Mudar Foto", textAlign: TextAlign.center),
                  ),
                ],
              ),

              SizedBox(height: 25),

              Text(
                "Julia Alves Pereira",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 184, 64, 104),
                ),
              ),
              
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    border: Border(
                      left: BorderSide(color: Color.fromARGB(255, 184, 64, 104), width: 6),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                      children: [
                        TextSpan(text: "Oi! Eu sou a Julia, estudante de "),
                        TextSpan(
                          text: "Desenvolvimento de Sistemas no Senai", 
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 64, 104))
                        ),
                        TextSpan(text: " e apaixonada por tecnologia, design e criação de interfaces modernas.\n\n"),
                        TextSpan(text: "Atualmente estudo "),
                        TextSpan(text: "JavaScript, React, Python, Flutter e Dart", style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ", além de explorar bastante o universo de "),
                        TextSpan(text: "UI/UX no Figma", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 0, 127))),
                        TextSpan(text: ".\n\n"),
                        TextSpan(text: "Gosto de combinar criatividade e organização para desenvolver projetos funcionais e visualmente agradáveis."),
                      ],
                    ),
                    textAlign: TextAlign.left, 
                  ),
                ),
              ),

              SizedBox(height: 50), 
            ],
          ),
        ),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}