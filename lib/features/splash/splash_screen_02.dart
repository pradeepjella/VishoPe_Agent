import 'package:flutter/material.dart';

class SplashScreen02 extends StatefulWidget {
  const SplashScreen02({super.key});

  @override
  State<SplashScreen02> createState() => _SplashScreen02State();
}

class _SplashScreen02State extends State<SplashScreen02> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 5),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(
            context,
            '/login',
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: InteractiveViewer(
          panEnabled: false,
          scaleEnabled: false,
          child: Image.asset(
            'assets/images/agent3.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}