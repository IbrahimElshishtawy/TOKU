// ignore_for_file: deprecated_member_use, unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Items_numbers.dart';
import 'package:toku/models/models.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<Number> numbers = [
    const Number(
      imageNumber: 'assets/images/numbers/number_one.png',
      japaneseNumber: 'いち (ichi)',
      englishNumber: 'One',
      soundNumber: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_two.png',
      japaneseNumber: 'に (ni)',
      englishNumber: 'Two',
      soundNumber: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_three.png',
      japaneseNumber: 'さん (san)',
      englishNumber: 'Three',
      soundNumber: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_four.png',
      japaneseNumber: 'し (shi)',
      englishNumber: 'Four',
      soundNumber: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_five.png',
      japaneseNumber: 'ご (go)',
      englishNumber: 'Five',
      soundNumber: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_six.png',
      japaneseNumber: 'ろく (roku)',
      englishNumber: 'Six',
      soundNumber: 'assets/sounds/numbers/number_six_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_seven.png',
      japaneseNumber: 'しち (shichi)',
      englishNumber: 'Seven',
      soundNumber: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_eight.png',
      japaneseNumber: 'はち (hachi)',
      englishNumber: 'Eight',
      soundNumber: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_nine.png',
      japaneseNumber: 'きゅう (kyuu)',
      englishNumber: 'Nine',
      soundNumber: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    const Number(
      imageNumber: 'assets/images/numbers/number_ten.png',
      japaneseNumber: 'じゅう (juu)',
      englishNumber: 'Ten',
      soundNumber: 'assets/sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFBA01),
        centerTitle: true,
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: const Color(0xFFBD9829),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            final item = numbers[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFFFD54F),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    item.imageNumber!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  item.englishNumber!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                subtitle: Text(
                  item.japaneseNumber!,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.volume_up, color: Colors.black),
                  onPressed: () {
                    // هنا يمكنك إضافة الكود لتشغيل الصوت
                    // على سبيل المثال، يمكنك استخدام حزمة audioplayers
                    // لتشغيل الصوت عند الضغط على الأيقونة
                    if (kDebugMode) {
                      print('Playing sound for ${item.englishNumber}');
                    }
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
