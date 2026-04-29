import 'package:app_links/components/components.mylink.dart';
import 'package:app_links/pages/pages.interativa.dart';
import 'package:flutter/material.dart';

class TelaLinks extends StatelessWidget {
  const TelaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela Links")),
      body: Center(
        child: Column(
          children: [
            MyLink(
              imagem:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1280px-Instagram_logo_2022.svg.png",
              link: "https://www.instagram.com/juhwixx/",
            ),
            MyLink(
              imagem:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/GitHub_Invertocat_Logo.svg/250px-GitHub_Invertocat_Logo.svg.png",
              link: "https://github.com/JuliaAlves12",
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TelaInterativa()));
              },
              child: Text("Navegar"),
            )
          ],
        ),
      ),
    );
  }
}
