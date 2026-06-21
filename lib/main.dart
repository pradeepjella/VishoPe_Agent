import 'package:flutter/material.dart';

import 'features/splash/splash_screen_01.dart';
import 'features/splash/splash_screen_02.dart';
import 'features/auth/login_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const VishoPayApp());
}

class VishoPayApp extends StatelessWidget {
  const VishoPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VishoPay Agent',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE6A100),
        ),
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Poppins',
      ),

      initialRoute: '/',

      routes: {
        // Splash Screen 1
        '/': (context) => const SplashScreen01(),

        // Splash Screen 2
        '/splash2': (context) => const SplashScreen02(),

        '/login': (context) => const LoginScreen(),

      
      },
    );
  }
}