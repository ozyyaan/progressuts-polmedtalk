import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Cari berita...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Berita Trending',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.trending_up, color: Colors.blue),
                  title: Text('Berita Trending 1'),
                  subtitle: Text('Ini adalah deskripsi singkat dari berita trending 1.'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.trending_up, color: Colors.blue),
                  title: Text('Berita Trending 2'),
                  subtitle: Text('Ini adalah deskripsi singkat dari berita trending 2.'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.trending_up, color: Colors.blue),
                  title: Text('Berita Trending 3'),
                  subtitle: Text('Ini adalah deskripsi singkat dari berita trending 3.'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.trending_up, color: Colors.blue),
                  title: Text('Berita Trending 4'),
                  subtitle: Text('Ini adalah deskripsi singkat dari berita trending 4.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
