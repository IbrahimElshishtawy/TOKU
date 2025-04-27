import 'package:flutter/material.dart';

void main() {
  runApp(TOKU());
}

class TOKU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('TOKU')),
      ),
    );
  }
}
