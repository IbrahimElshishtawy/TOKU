import 'package:flutter/material.dart';
import 'package:toku/models/Items_numbers.dart';
import 'package:toku/models/models.dart';


class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<Number> numbers = [
    const Number(imageNumber: 'assets/images/numbers/number_one.png', japaneseNumber: 'Eichi', englishNumber: 'one', soundNumber: 'assets/sounds/numbers/number_one_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_two.png', japaneseNumber: 'ni', englishNumber: 'two', soundNumber: 'assets/sounds/numbers/number_two_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_three.png', japaneseNumber: 'san', englishNumber: 'three', soundNumber: 'assets/sounds/numbers/number_three_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_four.png', japaneseNumber: 'shi', englishNumber: 'four', soundNumber: 'assets/sounds/numbers/number_four_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_five.png', japaneseNumber: 'go', englishNumber: 'five', soundNumber: 'assets/sounds/numbers/number_five_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_six.png', japaneseNumber: 'roku', englishNumber: 'six', soundNumber: 'assets/sounds/numbers/number_six_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_seven.png', japaneseNumber: 'sebum', englishNumber: 'seven', soundNumber:'assets/sounds/numbers/number_seven_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_eight.png', japaneseNumber: 'hibachi', englishNumber: 'eight', soundNumber: 'assets/sounds/numbers/number_eight_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_nine.png', japaneseNumber: 'ku', englishNumber: 'nine', soundNumber: 'assets/sounds/numbers/number_nine_sound.mp3'),
    const Number(imageNumber: 'assets/images/numbers/number_ten.png', japaneseNumber: 'ju', englishNumber: 'ten', soundNumber: 'assets/sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          }, color: Colors.white,
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 186, 1),
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: const Color(0xFFBD9829),
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
