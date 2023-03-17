import 'package:flutter/material.dart';
import 'package:login1/home_page.dart';
import 'package:login1/login_page.dart';
import 'package:login1/messenger_screen.dart';
import 'package:login1/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessengerScreen(),
    );
  }
}
