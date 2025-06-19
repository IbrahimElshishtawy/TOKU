// ignore_for_file: non_constant_identifier_names, camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:toku/models/models.dart';
// ignore: unused_import

class Items_days extends StatefulWidget {
  const Items_days({super.key, required this.day});

  final DayItem day;

  @override
  State<Items_days> createState() => _Items_daysState();
}

class _Items_daysState extends State<Items_days> {
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
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF00695C),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            widget.day.imageDay,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          widget.day.englishDay,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          widget.day.japaneseDay,
          style: const TextStyle(color: Color(0xFFE0F2F1), fontSize: 16),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.white, size: 28),
          onPressed: () async {
            try {
              await player.setAsset(widget.day.soundDay);
              await player.play();
            } catch (e) {
              debugPrint('Error playing sound: $e');
            }
          },
        ),
      ),
    );
  }
}
