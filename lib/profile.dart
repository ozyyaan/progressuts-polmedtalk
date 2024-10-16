import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/your_profile_picture.png'), // Ganti dengan path gambar profil Anda
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: Text(
              'Nama Anda',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Center(
            child: Text(
              'NIM / ID Mahasiswa',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 32.0),
          Text(
            'Informasi Kontak',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text('Email: nama@example.com'), // Ganti dengan email Anda
          SizedBox(height: 8.0),
          Text('Telepon: +62 812-3456-7890'), // Ganti dengan nomor telepon Anda
          SizedBox(height: 32.0),
          Text(
            'Tentang Saya',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Deskripsi singkat tentang diri Anda. Ceritakan pengalaman, minat, atau hal lain yang relevan dengan profil Anda.',
          ),
        ],
      ),
    );
  }
}
