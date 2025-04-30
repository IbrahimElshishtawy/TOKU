import 'package:flutter/material.dart';

class familyMemberPage extends StatelessWidget {
  const familyMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 32, 80, 23),
          title: const Text('Numbers',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const Center(
          child: Text('Numbers Page'),
        )
    );
  }
}
