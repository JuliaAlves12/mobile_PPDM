import 'package:flutter/material.dart';
import 'package:portifolio_julia/components/titulo.dart';
import 'package:portifolio_julia/components/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Redes extends StatefulWidget {
  const Redes({super.key});

  @override
  State<Redes> createState() => _RedesState();
}

class _RedesState extends State<Redes> {
  final campo = TextEditingController(); 
  String textoSalvo = ""; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 245),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Titulo(texto: "Minhas Redes"),
              SizedBox(height: 20),

              GestureDetector(
                onTap: () => launchUrl(Uri.parse("https://www.linkedin.com/in/j%C3%BAlia-alves-pereira-046a58318/")),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  height: 80,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        width: 60, height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 184, 64, 104),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                        ),
                        child: Icon(Icons.business_center, color: Colors.white, size: 30),
                      ),
                      SizedBox(width: 20),
                      Text("LinkedIn", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 64, 104))),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => launchUrl(Uri.parse("https://github.com/JuliaAlves12")),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  height: 80,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        width: 60, height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 127),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                        ),
                        child: Icon(Icons.code, color: Colors.white, size: 30),
                      ),
                      SizedBox(width: 20),
                      Text("GitHub", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 64, 104))),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Envie uma mensagem:", style: TextStyle(color: Color.fromARGB(255, 184, 64, 104), fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    TextField(
                      controller: campo,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Digite aqui...",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          textoSalvo = campo.text; 
                        });
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFB84068)),
                      child: Text("Enviar", style: TextStyle(color: Colors.white)),
                    ),
                    
                    SizedBox(height: 20),
                    Text(
                      "Mensagem salva: $textoSalvo",
                      style: TextStyle(color: const Color.fromARGB(137, 0, 0, 0), fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}