import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class MyLink extends StatelessWidget {
  String imagem;
  String link;
  MyLink({super.key, required this.imagem, required this.link});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        //Serve para traduzir a url para o flutter
        Uri linkConvertido = Uri.parse(link);
        if (await canLaunchUrl(linkConvertido)) {
          await launchUrl(linkConvertido);
        }
      },
      child: Image.network(imagem, width: 80),
    );
  }
}
