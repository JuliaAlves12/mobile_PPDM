import 'package:flutter/material.dart';
import 'package:instagram/pages/home.dart';


void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}