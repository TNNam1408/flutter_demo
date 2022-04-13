import 'package:flutter/material.dart';
import 'package:ui_frovis/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  void initState() {
    super.initState();
    setState(() {
      Future.delayed(const Duration(seconds: 5)).then(
        (_) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFCB08),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(46, 227, 47, 0),
              child: Image.asset("assets/images/logo.png"),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(76, 24, 77, 0),
              child: const Text(
                "Sạc mọi nơi, chơi mọi chốn!",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
