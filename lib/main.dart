import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2_2/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home : FirstScreen());
  }
}
