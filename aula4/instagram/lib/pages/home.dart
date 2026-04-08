import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: Icon(Icons.add_box_outlined, color: Colors.black), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite_border, color: Colors.black), onPressed: () {}),
          IconButton(icon: Icon(Icons.chat_bubble_outline, color: Colors.black), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(colors: [Colors.yellow, Colors.red, Colors.purple]),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                            child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0YjkcW6qZ-cevjZgMz5vEgrN2_fYZ8W64Lw&s")),
                          ),
                        ),
                      ),
                      Text("Nome", style: TextStyle(fontSize: 12)),
                    ],
                  );
                }
              ),
            )
          ],
        ),
      )
    );
  }
}