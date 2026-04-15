import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage("images/cafe_logo_2.jpg"),
      backgroundColor: Colors.transparent,
    );
  }
}
