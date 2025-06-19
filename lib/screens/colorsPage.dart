// ignore_for_file: file_names, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:toku/models/models.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<colors> color_P = [
    colors(
      imagecolors: 'assets/images/colors/color_black.png',
      englishcolors: 'Black',
      japanesecolors: '黒',
      romajicolors: 'Kuro',
      soundcolors: 'assets/sounds/colors/black.wav',
    ),
    colors(
      imagecolors: 'assets/images/colors/color_brown.png',
      englishcolors: 'Brown',
      japanesecolors: '茶色',
      romajicolors: 'Chairo',
      soundcolors: 'assets/sounds/colors/brown.wav',
    ),
    colors(
      imagecolors: 'assets/images/colors/color_dusty_yellow.png',
      englishcolors: 'Dusty Yellow',
      japanesecolors: '黄土色',
      romajicolors: 'Odoiro',
      soundcolors: 'assets/sounds/colors/dusty yellow.wav',
    ),
    colors(
      imagecolors: 'assets/images/colors/color_gray.png',
      englishcolors: 'Gray',
      japanesecolors: '灰色',
      romajicolors: 'Haiiro',
      soundcolors: 'assets/sounds/colors/gray.wav',
    ),
    colors(
      imagecolors: 'assets/images/colors/color_green.png',
      englishcolors: 'Green',
      japanesecolors: '緑',
      romajicolors: 'Midori',
      soundcolors: 'assets/sounds/colors/green.wav',
    ),
    colors(
      imagecolors: 'assets/images/colors/color_red.png',
      englishcolors: 'Red',
      japanesecolors: '赤',
      romajicolors: 'Aka',
      soundcolors: 'assets/sounds/colors/red.wav',
    ),
    colors(
      imagecolors: 'assets/images/colors/color_white.png',
      englishcolors: 'White',
      japanesecolors: '白',
      romajicolors: 'Shiro',
      soundcolors: 'assets/sounds/colors/white.wav',
    ),
    colors(
      imagecolors: 'assets/images/colors/yellow.png',
      englishcolors: 'Yellow',
      japanesecolors: '黄色',
      romajicolors: 'Kiiro',
      soundcolors: 'assets/sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF213355),
        centerTitle: true,
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: const Color(0xFF193365),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: color_P.length,
          itemBuilder: (context, index) {
            final item = color_P[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFF2A406B),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item.imagecolors!,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.englishcolors ?? '',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Japanese: ${item.japanesecolors}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFFD1D5DB),
                          ),
                        ),
                        Text(
                          'Romaji: ${item.romajicolors}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.tealAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.volume_up, color: Colors.white),
                    onPressed: () {
                      // ممكن تضيف تشغيل الصوت هنا لو حبيت لاحقًا
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
