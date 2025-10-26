import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Plant {
  final String name;
  final String price;
  final String imageUrl;
  final String description;

  Plant({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DMR GARDENING',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Plant> plants = [
      Plant(
        name: 'गुलाब',
        price: '₹150',
        imageUrl: 'https://i.imgur.com/tZ5vA2c.jpeg',
        description: 'सुंदर आणि सुवासिक फुलांसाठी प्रसिद्ध असलेले एक लोकप्रिय फूलझाड.',
      ),
      Plant(
        name: 'जास्वंद',
        price: '₹120',
        imageUrl: 'https://i.imgur.com/M6y5a3x.jpeg',
        description: 'हे फूलझाड घरात किंवा बागेत सहज लावता येते आणि ते खूप सुंदर दिसते.',
      ),
      Plant(
        name: 'तुळस',
        price: '₹80',
        imageUrl: 'https://i.imgur.com/J4qf4s8.jpeg',
        description: 'एक पवित्र आणि औषधी वनस्पती, जी प्रत्येक घरात असायलाच हवी.',
      ),
      Plant(
        name: 'कोरफड',
        price: '₹100',
        imageUrl: 'https://i.imgur.com/7sH3sCr.jpeg',
        description: 'कोरफड ही एक औषधी वनस्पती आहे, जी त्वचा आणि केसांसाठी खूप फायदेशीर आहे.',
      ),
      Plant(
        name: 'मनी प्लांट',
        price: '₹90',
        imageUrl: 'https://i.imgur.com/r2c3jRO.jpeg',
        description: 'हे एक इनडोअर प्लांट आहे, जे घरात सकारात्मक ऊर्जा आणते असे मानले जाते.',
      ),
      Plant(
        name: 'आंबा',
        price: '₹500',
        imageUrl: 'https://i.imgur.com/sC3bY4W.jpeg',
        description: 'फळांचा राजा आंबा, जो तुम्ही तुमच्या बागेत लावू शकता.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DMR GARDENING'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'DMR GARDENING',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('मुख्य पृष्ठ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'आमच्याबद्दल',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('महेश रुपनूर'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text('7775962737'),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.network(
                    plants[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    plants[index].name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    plants[index].price,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.green[800],
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // AI Chatbot feature will be implemented here.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('AI चॅटबॉट लवकरच येत आहे!'),
            ),
          );
        },
        tooltip: 'Chat with AI',
        child: const Icon(Icons.chat),
      ),
    );
  }
}
