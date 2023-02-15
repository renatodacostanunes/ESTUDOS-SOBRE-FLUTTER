import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_firebase/firebase_options.dart';
import 'package:login_firebase/src/modules/help/pages/login_page.dart';
import 'package:login_firebase/src/modules/help/pages/sign_up_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const LoginPage(),
        '/createAccount': (context) => const SignUpPage(),
      },
    ),
  );
}
