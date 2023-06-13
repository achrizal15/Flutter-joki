import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    // Lakukan logika untuk login di sini
    // Misalnya, memvalidasi input dan mengirim permintaan ke server
  }
}
