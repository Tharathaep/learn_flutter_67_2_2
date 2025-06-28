//Step 2: App screen
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.purple],
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.6, 0.5),
          tileMode: TileMode.repeated,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('android/assets/images/app_screen.png'),
          const SizedBox(height: 50),
          const SpinKitSpinningLines(
            color: Colors.white,
            size: 50.0,
          ),
          
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: const Center(
        child: Text(
          'Welcome to the second page!',
          style: TextStyle(fontSize: 30, 
          color: Colors.black54, 
          fontFamily: "Alike",
          fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
