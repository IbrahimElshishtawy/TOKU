import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 75, 20),
        title: const Text('Numbers',
          style: TextStyle(
            color: Colors.white,
          )
        ),
      ),
      body: ,

    );
  }
}
class Number extends StatelessWidget {
   Number({super.key, this.TextW1 , this.TextW2 , this.ImageW});
 String? TextW1;
 String? TextW2;
 String? ImageW;
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color(0xFFAE6C00),
    height: 100,
    child:Row(
    children: [
    Container(
    width: 100,
    height: 100,
    color: Color(0xCDD5AF71),
    child: Image.asset('$ImageW'),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('$TextW1',style: TextStyle(
    color: Colors.white,
    fontSize: 22,
    ),),
Text('$TextW2',style: TextStyle(
color: Colors.white,
fontSize: 22,
)),
],

),
),

Spacer(flex: 1,),
Padding(
padding: const EdgeInsets.only(right: 20),
child: Icon(
Icons.play_arrow,
color: Colors.white,
size: 28,
),
),

],
),
);
  }
}
