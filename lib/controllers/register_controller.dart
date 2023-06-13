import 'package:flutter/material.dart';

class RegisterController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void register() {
    String email = emailController.text;
    String password = passwordController.text;

    // Lakukan logika untuk registrasi di sini
    // Misalnya, memvalidasi input dan mengirim permintaan ke server
  }
}
