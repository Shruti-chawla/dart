import 'package:flutter/material.dart';
import 'package:namaste_bharat1/home/signin_screen.dart';
import '../utils/color_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashDelay = 5000;
  @override
  void initState() {
    super.initState();
    // Create a delay for the splash screen
    Future.delayed(Duration(milliseconds: splashDelay), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>SignIn()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("FF9933"),  // Saffron
              hexStringToColor("FFFFFF"),  // White
              hexStringToColor("138808"),  // Green
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/project_image2.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
