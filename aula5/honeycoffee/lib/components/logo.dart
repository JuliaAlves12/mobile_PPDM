import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage("images/pato.webp"),
      backgroundColor: Colors.transparent,
    );
  }
}
