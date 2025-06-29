import 'package:flutter/material.dart';
import 'package:toku/screens/splash_page.dart';

void main() {
  runApp(const TOKU());
}

class TOKU extends StatelessWidget {
  const TOKU({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
