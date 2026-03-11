import 'package:flutter/material.dart';
import 'package:inter2/pages/TelaHome.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem - Vindo", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 122, 0),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 340),
            Image.asset("assets/inter_transparente.png", width: 350),
            SizedBox(height: 60),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 122, 0),
                foregroundColor: Colors.white,
                fixedSize: Size(250, 40),
                side: BorderSide(
                  color: const Color.fromARGB(255, 173, 96, 1),
                  width: 3,
                ),
              ),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>TelaHome()));
              },
              child: Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}
