import 'package:flutter/material.dart';
import 'package:instagram/pages/home.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'julia',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.video_call_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.add), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                fillColor: Colors.grey[200],
                filled: true,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1774860390220-5f568d607636?q=80&w=1170&auto=format&fit=crop'),
                  ),
                  title: Text('Rayane', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Visto há 10 min'),
                  trailing: Icon(Icons.camera_alt_outlined),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1774991061995-9bef4c333de4?q=80&w=687&auto=format&fit=crop'),
                  ),
                  title: Text('Gabi', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Enviou um reels'),
                  trailing: Icon(Icons.camera_alt_outlined),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1674777843203-da3ebb9fbca0?q=80&w=735&auto=format&fit=crop'),
                  ),
                  title: Text('Nicolas', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Ativo(a) agora'),
                  trailing: Icon(Icons.camera_alt_outlined),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506744038136-46273834b3fb?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  title: Text('Dienifer', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Ativo(a) agora'),
                  trailing: Icon(Icons.camera_alt_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false, 
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.movie_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1775563622936-2bac8f284416?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}