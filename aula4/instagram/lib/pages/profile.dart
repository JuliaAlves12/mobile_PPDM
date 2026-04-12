import 'package:flutter/material.dart';

List minhasFotos = [
  'https://wallpapers.com/images/featured/imagens-de-paisagens-a3hr6gk3xfx36dyg.jpg',
  'https://imgs.jusbr.com/publications/images/f6d925b064fa73dc0bc121a013e421ba',
  'https://plus.unsplash.com/premium_photo-1692439065073-0c6c69d4bb66?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/7D5C/production/_100729023_photojan2970152am-1.jpg.webp',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGSC0j2q6AhrrxFANe_gAOD7zkwQeuaAXv-w&s',
  'https://plus.unsplash.com/premium_photo-1676475964992-6404b8db0b53?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1444858291040-58f756a3bdd6?q=80&w=1378&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1723874561074-96efbae2c478?q=80&w=706&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/FDD6/production/_100728946_catrelax.jpg.webp'
];

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'julia',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1692439065073-0c6c69d4bb66?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                    ),
                  ),
                  Column(
                    children: const [
                      Text('6', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Publicações'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('540', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Seguidores'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('320', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Seguindo'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Julia Alves', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Estudante de ADS'),
                    Text('Vini me ajuda a codar em dart pf'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        elevation: 0,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text('Editar perfil'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        elevation: 0,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text('Compartilhar perfil'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: minhasFotos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return Image.network(
                  minhasFotos[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ],
        ),
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
              backgroundImage: NetworkImage(
                'https://plus.unsplash.com/premium_photo-1692439065073-0c6c69d4bb66?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}