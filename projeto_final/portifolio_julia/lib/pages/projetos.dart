import 'package:flutter/material.dart';
import 'package:portifolio_julia/components/titulo.dart';
import 'package:portifolio_julia/components/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 245),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Titulo(texto: "Meus Projetos"),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(color: Color.fromARGB(255, 184, 64, 104), width: 5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Filminis", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 64, 104))),
                    SizedBox(height: 5),
                    Text("Interface de catálogo de filmes para navegar e explorar títulos."),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => launchUrl(Uri.parse("https://github.com/JuliaAlves12/Front/tree/8908845ab13b517ca995027e64272e7e7faae538/Filminis")),
                      child: Text(
                        "Link: github.com/JuliaAlves12/Filminis", 
                        style: TextStyle(color: Color.fromARGB(255, 255, 0, 127), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(color: Color.fromARGB(255, 184, 64, 104), width: 5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Smart City", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 64, 104))),
                    SizedBox(height: 5),
                    Text("Sistema de sensores com back-end para o Senai."),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => launchUrl(Uri.parse("https://github.com/JuliaAlves12/smart_city.git")),
                      child: Text(
                        "Link: github.com/JuliaAlves12/smart_city", 
                        style: TextStyle(color: Color.fromARGB(255, 255, 0, 127), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(color: Color.fromARGB(255, 184, 64, 104), width: 5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Alice JS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 64, 104))),
                    SizedBox(height: 5),
                    Text("Projeto lúdico para pesquisa de palavras no livro da Alice."),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => launchUrl(Uri.parse("https://github.com/JuliaAlves12/Alice_JS.git")),
                      child: Text(
                        "Link: github.com/JuliaAlves12/Alice_JS", 
                        style: TextStyle(color: Color.fromARGB(255, 249, 2, 126), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}