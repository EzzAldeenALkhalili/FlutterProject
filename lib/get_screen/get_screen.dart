import 'package:flutter/material.dart';
import 'package:fluuter_test/WelcomeScreen/start_screen.dart';

class GetScreen extends StatefulWidget {
  const GetScreen({super.key});
  @override
  State<GetScreen> createState() {
    return _GetScreenState();
  }
}

class _GetScreenState extends State<GetScreen> {
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "get-screen";
    });
  }

  @override
  Widget build(context) {
    final screenWidget =
        activeScreen == "start-screen"
            ? const StartScreen()
            : const GetScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 49, 49, 49),
                Color.fromARGB(255, 124, 124, 124),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
