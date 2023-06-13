import 'package:flutter/material.dart';
import 'package:landin_app/views/login.dart';
import 'package:landin_app/views/register.dart';
import 'package:landin_app/views/splashscreen.dart';
import 'package:landin_app/views/home.dart';
import 'package:landin_app/views/tambah_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => LoginScreen(),
      },
      //  home: InputFormPage(),
    );
  }
}
