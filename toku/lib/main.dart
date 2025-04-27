import 'package:flutter/material.dart';

void maiToKku() {
  runApp(const TOKU());
}

class TOKU extends StatelessWidget {
  const TOKU({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TOKU'),
          backgroundColor: Color.fromARGB(255, 132, 68, 16),
        ),
      ),
    );
  }
}
