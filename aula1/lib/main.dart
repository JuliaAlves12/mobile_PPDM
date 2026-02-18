import 'package:flutter/material.dart';

void main() {
  runApp(TelaInicial());
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( //Fragmenta sua tela
        appBar: AppBar(title: Text("App1")),
        body:Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 100, height: 100, color: Colors.pinkAccent),
            Container(width: 100, height: 100, color: Colors.black),
            Container(width: 100, height: 100, color: Colors.amber),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 100, height: 100, color: const Color.fromARGB(255, 64, 255, 89)),
                Container(width: 100, height: 100, color: const Color.fromARGB(255, 192, 55, 158)),
                Container(width: 100, height: 100, color: const Color.fromARGB(255, 67, 22, 138)),
              ],
            ),
            SizedBox(height: 50),
            Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Container(width: 100, height: 100, color: const Color.fromARGB(255, 70, 155, 224)),
                Container(width: 70, height: 70, color: const Color.fromARGB(255, 87, 84, 143)),
                Container(width: 50, height: 50, color: const Color.fromARGB(255, 86, 148, 96)),
              ],
            )
          ],
        ),
      )
    );
  }
}
