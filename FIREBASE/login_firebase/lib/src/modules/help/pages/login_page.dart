import 'package:flutter/material.dart';

import '../controller/firebase_auth_service.dart';
import '../widgets/r_textfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RTextField(controller: emailController, hintText: 'Email'),
            const SizedBox(height: 20),
            RTextField(controller: passwordController, hintText: 'Password'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                FirebaseAuthService().signIn(
                  email: emailController.text,
                  password: passwordController.text,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: const Size(
                  200.0,
                  50.0,
                ),
                textStyle: const TextStyle(fontSize: 28.0),
              ),
              child: const Text("Login"),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/createAccount'),
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
