import 'package:flutter/material.dart';
import 'package:portifolio_julia/components/titulo.dart';
import 'package:portifolio_julia/components/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Redes extends StatelessWidget {
  const Redes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 245),
      body: SafeArea(
        child: Column(
          children: [
            Titulo(texto: "Minhas Redes"),
            
            SizedBox(height: 30),

            GestureDetector(
              onTap: () => launchUrl(Uri.parse("https://www.linkedin.com/in/j%C3%BAlia-alves-pereira-046a58318/")),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 80,
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 127),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                      ),
                      child: Icon(Icons.code, color: Colors.white, size: 30),
                    ),
                    SizedBox(width: 20),
                    Text("GitHub", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFB84068))),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () => launchUrl(Uri.parse("https://www.instagram.com/juhwixx/")),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 184, 64, 104),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                      ),
                      child: Icon(Icons.camera_alt, color: Colors.white, size: 30),
                    ),
                    SizedBox(width: 20),
                    Text("Instagram", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 64, 104))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}