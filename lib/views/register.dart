import 'package:flutter/material.dart';
import 'package:landin_app/controllers/register_controller.dart';

import 'login.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: RegisterView(),
        ),
      ),
    );
  }
}

class RegisterView extends StatelessWidget {
  final RegisterController controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenSize.height * 0.1),
          Center(
            child: Text(
              'Register',
              style: TextStyle(color: const Color.fromARGB(255, 2, 45, 119), fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
           Image.asset(
          "assets/images/welcome.png"
        ),
          SizedBox(height: screenSize.height * 0.01),
          Container(
            width: screenSize.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width * 0.8,
                  child: TextField(
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: screenSize.width * 0.8,
                  child: TextField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.05),
                Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height*0.072,

                  child: ElevatedButton(
                    onPressed: () {
                      controller.register();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(16),
                      backgroundColor: const Color.fromARGB(255, 2, 45, 119),
                    ),
                    child: Text('Register', style: TextStyle(fontSize: 18),),
                  ),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 58.0),
                  child: Row(
                    children: [
                      Text('Sudah Memiliki Akun ? '),
                      GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: const Color.fromARGB(255, 2, 45, 119)),
                    ),
                  ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: screenSize.height * 0.2),
        ],
      ),
    );
  }
}
