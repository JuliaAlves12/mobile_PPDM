import 'package:flutter/material.dart';

class Appbarcustom extends StatelessWidget implements PreferredSizeWidget {
  String nome;
  Appbarcustom({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(nome),
      backgroundColor: const Color.fromARGB(255, 255, 189, 235),
      toolbarHeight: 120,
      iconTheme: IconThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
