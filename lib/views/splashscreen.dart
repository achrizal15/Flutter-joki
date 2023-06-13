import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tambahkan logika atau pemrosesan lainnya yang Anda butuhkan di sini
    // Contoh: Memuat data awal, menginisialisasi sesi, dll.
    
    // Contoh penundaan 3 detik untuk simulasi tampilan splash screen
    Future.delayed(Duration(seconds: 6), () {
      // Navigasi ke halaman berikutnya setelah tampilan splash screen selesai
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png"
        ),
      ),
    );
  }
}
