import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  Widget pagina;
  Botao({super.key, required this.pagina});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 129, 7, 93),
        foregroundColor: Colors.white,
        fixedSize: Size(150, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pagina),
        );
      },
      child: Text("Clique aqui"),
    );
  }
}
