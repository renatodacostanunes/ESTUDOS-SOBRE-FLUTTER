import 'package:flutter/material.dart';
import 'package:login_firebase/src/modules/help/widgets/r_textfield_widget.dart';

import '../controller/firebase_auth_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RTextField(controller: nameController, hintText: 'Name'),
            const SizedBox(height: 20),
            RTextField(controller: emailController, hintText: 'Email'),
            const SizedBox(height: 20),
            RTextField(controller: passwordController, hintText: 'Password'),
            const SizedBox(height: 20),
            RTextField(controller: confirmPasswordController, hintText: 'Confirm Password'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                FirebaseAuthService().signUp(
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
                  textStyle: const TextStyle(fontSize: 28.0)),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
