import 'package:flutter/material.dart';

class colorsPage extends StatelessWidget {
  const colorsPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor:  const Color.fromARGB(255, 33, 51, 85),
          title: Text('Colors',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const Center(
          child: Text('Colors Page'),
        )
    );
  }
}
