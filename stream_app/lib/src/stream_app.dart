// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:stream_app/src/features/dashboard/dashboard_page.dart';

class StreamApp extends StatelessWidget {
  final String titleApp;

  const StreamApp({
    Key? key,
    required this.titleApp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF0f0f17),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0f0f17),
          elevation: 0,
        ),
      ),
      home: const DashBoardPage(),
    );
  }
}
