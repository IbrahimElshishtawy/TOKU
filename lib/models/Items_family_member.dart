import 'package:flutter/material.dart';
import 'models.dart';
import 'package:just_audio/just_audio.dart';

class Items_family extends StatefulWidget {
  const Items_family({super.key, required this.family});
  final family_members family;
  @override
  State<Items_family> createState() => _ItemsState();
}

class _ItemsState extends State<Items_family> {
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
          SizedBox(width: 100, child: Image.asset(widget.family.imagemembers!)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.family.englishmembers!,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  widget.family.japanesememebers!,
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
                await player.setAsset(widget.family.soundmembers!);
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