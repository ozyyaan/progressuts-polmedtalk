import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          NotificationTile(
            title: 'Notifikasi 1',
            subtitle: 'Anda memiliki 3 berita baru di Polmed Talk.',
            date: '10 Okt 2024',
          ),
          NotificationTile(
            title: 'Notifikasi 2',
            subtitle: 'Dapatkan update terbaru dari kampus Anda.',
            date: '9 Okt 2024',
          ),
          NotificationTile(
            title: 'Notifikasi 3',
            subtitle: 'Jangan lewatkan acara mendatang di Polmed.',
            date: '8 Okt 2024',
          ),
          NotificationTile(
            title: 'Notifikasi 4',
            subtitle: 'Pendaftaran kuliah semester depan telah dibuka.',
            date: '7 Okt 2024',
          ),
          NotificationTile(
            title: 'Notifikasi 5',
            subtitle: 'Selamat! Anda diterima dalam program magang.',
            date: '6 Okt 2024',
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;

  NotificationTile({required this.title, required this.subtitle, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(date, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
