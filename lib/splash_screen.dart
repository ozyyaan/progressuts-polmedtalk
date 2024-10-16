import 'package:flutter/material.dart';
import 'home.dart'; // Ganti dengan halaman utama Anda

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tunggu 3 detik sebelum navigasi ke halaman berikutnya
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Atur warna background splash screen
      body: Center(
        child: Image.asset('assets/images/polmedtalk.png',
            width: 150, height: 150), // Atur ukuran logo
      ),
    );
  }
}
