import 'package:climater_project_application/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var globalMessagerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: WelcomeScreen(),
    );
  }
}
