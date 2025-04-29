import 'package:flutter/material.dart';

class phrasesPage extends StatelessWidget {
  const phrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 179, 131, 66),
          title: const Text('Phrases'
          ,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const Center(
          child: Text('Phrases Page'),
        )
    );
  }
}
