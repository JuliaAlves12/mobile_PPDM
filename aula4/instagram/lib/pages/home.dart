import 'package:flutter/material.dart';

List nomes = [
  'seu story',
  'Rayane',
  'Gabi',
  'Nicolas',
  'Dienifer',
  'Julia',
  'Joao',
  'Lucas',
  'Mariam',
  'Kaique',
];
List images = [
  'https://images.unsplash.com/photo-1775563622936-2bac8f284416?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1774860390220-5f568d607636?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1774991061995-9bef4c333de4?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1674777843203-da3ebb9fbca0?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1506744038136-46273834b3fb?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1565958011703-44f9829ba187?q=80&w=765&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1664478383014-e8bc930be7c2?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1556742502-ec7c0e9f34b1?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1627647227768-705244233b56?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1675432656807-216d786dd468?q=80&w=690&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
];

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
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: nomes.length,
                itemBuilder: (context, index) {
                  final itemnomes = nomes[index];
                  final itemimagens = images[index];
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.red, Colors.purple],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(itemimagens),
                            ),
                          ),
                        ),
                      ),
                      Text(itemnomes, style: TextStyle(fontSize: 12)),
                    ],
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(images[2]),
                  ),
                  title: Text(
                    nomes[2],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/pecadores.jpg',
                      width: double.infinity,
                      height: 600,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.chat_bubble_outline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.send_outlined),
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.bookmark_border),
                      onPressed: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(images[3]),
                            radius: 11,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(images[7]),
                            radius: 11,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(images[1]),
                            radius: 11,
                          ),
                          Text(
                            'Curtido por Nicolas e outras pessoas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.movie_outlined),label: 'Reels',),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'Loja',),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 12, backgroundImage: NetworkImage(images[0]),
          ),
          label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
