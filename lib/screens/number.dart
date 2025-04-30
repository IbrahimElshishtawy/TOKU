import 'package:flutter/material.dart';
import 'package:toku/models/Items.dart';
import 'package:toku/models/number.dart';


class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<Number> numbers = [
    const Number(imageNumber: 'assets/images/numbers/number_one.png', japaneseNumber: 'Eichi', englishNumber: 'one'),
    const Number(imageNumber: 'assets/images/numbers/number_two.png', japaneseNumber: 'ni', englishNumber: 'two'),
    const Number(imageNumber: 'assets/images/numbers/number_three.png', japaneseNumber: 'san', englishNumber: 'three'),
    const Number(imageNumber: 'assets/images/numbers/number_four.png', japaneseNumber: 'shi', englishNumber: 'four'),
    const Number(imageNumber: 'assets/images/numbers/number_five.png', japaneseNumber: 'go', englishNumber: 'five'),
    const Number(imageNumber: 'assets/images/numbers/number_six.png', japaneseNumber: 'roku', englishNumber: 'six'),
    const Number(imageNumber: 'assets/images/numbers/number_seven.png', japaneseNumber: 'sebum', englishNumber: 'seven'),
    const Number(imageNumber: 'assets/images/numbers/number_eight.png', japaneseNumber: 'hibachi', englishNumber: 'eight'),
    const Number(imageNumber: 'assets/images/numbers/number_nine.png', japaneseNumber: 'ku', englishNumber: 'nine'),
    const Number(imageNumber: 'assets/images/numbers/number_ten.png', japaneseNumber: 'ju', englishNumber: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 75, 20),
        title: const Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: const Color(0xFFAE6C00),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Items(number: numbers[index]);
          },
        ),
      ),
    );
  }
}
