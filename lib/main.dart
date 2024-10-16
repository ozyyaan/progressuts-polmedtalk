import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polmed Talk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Tampilkan SplashScreen pertama kali
    );
  }
}
