import 'package:flutter/material.dart';

class Appbarcustom extends StatelessWidget implements PreferredSize {
  String nome;
  Appbarcustom({super.key, required this.nome});

  @override
  Size get preferredSize => throw UnimplementedError();

  @override
  Widget get child => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
