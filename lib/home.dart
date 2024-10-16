import 'package:flutter/material.dart';
import 'search.dart';
import 'notifications.dart';
import 'profile.dart'; // Import halaman profile

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<String> _titles = [
    'Home',
    'Search',
    'Notifications',
    'Profile', // Judul untuk halaman profile
  ];

  final List<Map<String, String>> newsList = [
    {
      'title': 'Polmed Is The Best',
      'description': 'Lorem Ipsum dolor sit amet',
      'image': 'images/download.jpeg', // Ganti dengan path gambar Anda
    },
    {
      'title': 'Polmed Is The Best',
      'description': 'Lorem Ipsum dolor sit amet',
      'image': 'images/download.jpeg', // Ganti dengan path gambar Anda
    },
    {
      'title': 'Polmed Is The Best',
      'description': 'Lorem Ipsum dolor sit amet',
      'image': 'images/download.jpeg', // Ganti dengan path gambar Anda
    },
    {
      'title': 'Polmed Is The Best',
      'description': 'Lorem Ipsum dolor sit amet',
      'image': 'images/download.jpeg', // Ganti dengan path gambar Anda
    },
    {
      'title': 'Polmed Is The Best',
      'description': 'Lorem Ipsum dolor sit amet ',
      'image': 'images/download.jpeg', // Ganti dengan path gambar Anda
    },
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getSelectedPage(int index) {
    switch (index) {
      case 0:
        return _buildHomePage(); // Memanggil metode untuk membangun halaman Home
      case 1:
        return SearchPage(); // Halaman Search
      case 2:
        return NotificationsPage(); // Halaman Notifications
      case 3:
        return ProfilePage(); // Halaman Profile
      default:
        return Center(child: Text('Home Page Content'));
    }
  }

  Widget _buildHomePage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsCard(
            title: newsList[index]['title']!,
            description: newsList[index]['description']!,
            image: newsList[index]['image']!,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]), // Judul AppBar dinamis
      ),
      body: _getSelectedPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Color(0xFF5F1B6C),
        unselectedItemColor: Color(0xFF5F1B6C),
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  NewsCard({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, fit: BoxFit.cover), // Menampilkan gambar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
