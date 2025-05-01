import 'package:flutter/material.dart';
import 'package:toku/models/items_colors.dart';
import 'package:toku/models/models.dart';

class ColorsPage extends StatelessWidget {
   ColorsPage({super.key});
  final List<colors> color_P =[
    colors(imagecolors: 'assets/images/colors/color_black.png', japanesecolors: 'black', englishcolors: 'black', soundcolors: 'assets/sounds/colors/black.wav'),
    colors(imagecolors: 'assets/images/colors/color_brown.png', japanesecolors: 'brown', englishcolors: 'brown', soundcolors: 'assets/sounds/colors/brown.wav'),
    colors(imagecolors: 'assets/images/colors/color_dusty_yellow.png', japanesecolors: 'dusty yellow', englishcolors: 'dusty yellow', soundcolors: 'assets/sounds/colors/dusty yellow.wav'),
    colors(imagecolors: 'assets/images/colors/color_gray.png', japanesecolors: 'gray', englishcolors: 'gray', soundcolors: 'assets/sounds/colors/gray.wav'),
    colors(imagecolors: 'assets/images/colors/color_green.png', japanesecolors: 'green', englishcolors: 'green', soundcolors: 'assets/sounds/colors/green.wav'),
    colors(imagecolors: 'assets/images/colors/color_red.png', japanesecolors: 'red', englishcolors: 'red', soundcolors: 'assets/sounds/colors/red.wav'),
    colors(imagecolors: 'assets/images/colors/color_white.png', japanesecolors: 'white', englishcolors: 'white', soundcolors: 'assets/sounds/colors/white.wav'),
    colors(imagecolors: 'assets/images/colors/yellow.png', japanesecolors: 'yellow', englishcolors: 'yellow', soundcolors: 'assets/sounds/colors/yellow.wav'),
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
          backgroundColor:  const Color.fromARGB(255, 33, 51, 85),
          title: Text('Colors',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body:Container(
          color: const Color(0xFF193365),
          child: ListView.builder(
            itemCount: color_P.length,
            itemBuilder: (context, index) {
              return Items_colors(color_I : color_P[index]);
            },
          ),
        ),
    );
  }
}
