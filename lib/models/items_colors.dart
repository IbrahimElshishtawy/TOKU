import 'package:flutter/material.dart';
import 'models.dart';
import 'package:just_audio/just_audio.dart';

// ignore: camel_case_types
class Items_colors extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const Items_colors({super.key, required this.color_I});
  // ignore: non_constant_identifier_names
  final colors color_I;
  @override
  State<Items_colors> createState() => _ItemsState();
}

class _ItemsState extends State<Items_colors> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xCDD5AF71),
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          SizedBox(width: 100, child: Image.asset(widget.color_I.imagecolors!)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.color_I.englishcolors!,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  widget.color_I.japanesecolors!,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () async {
                await player.setAsset(widget.color_I.soundcolors!);
                await player.play();
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
