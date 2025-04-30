import 'package:flutter/material.dart';
import 'number.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.number});
final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 100,
    color: const Color(0xCDD5AF71),
    margin: const EdgeInsets.symmetric(vertical: 2),
    child: Row(
    children: [
    SizedBox(
    width: 100,
    child: Image.asset(number.imageNumber!),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(number.englishNumber!,
    style: const TextStyle(color: Colors.white, fontSize: 22)),
Text(number.japaneseNumber!,
style: const TextStyle(color: Colors.white, fontSize: 22)),
],
),
),
const Spacer(),
Padding(
padding: const EdgeInsets.only(right: 20),
child:IconButton(onPressed: (){

},
    icon:  Icon(Icons.play_arrow,
        color: Colors.white,
        size: 28),
),
),
],
),
);
  }
}
