// ignore_for_file: unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:toku/models/Items_family_member.dart';
import 'package:toku/models/models.dart';
import 'package:audioplayers/audioplayers.dart' as ap;

class FamilyMemberPage extends StatelessWidget {
  FamilyMemberPage({super.key});

  final List<family_members> familyMembers = [
    const family_members(
      englishmembers: 'Daughter',
      japanesememebers: '娘',
      soundmembers: 'assets/sounds/family_members/daughter.wav',
      imagemembers: 'assets/images/family_members/family_daughter.png',
      arabic: 'ابنة',
    ),
    const family_members(
      englishmembers: 'Son',
      japanesememebers: '息子',
      soundmembers: 'assets/sounds/family_members/son.wav',
      imagemembers: 'assets/images/family_members/family_son.png',
      arabic: 'ابن',
    ),
    const family_members(
      englishmembers: 'Older Brother',
      japanesememebers: '兄',
      soundmembers: 'assets/sounds/family_members/olderbrother.wav',
      imagemembers: 'assets/images/family_members/family_older_brother.png',
      arabic: 'أخ أكبر',
    ),
    const family_members(
      englishmembers: 'Younger Brother',
      japanesememebers: '弟',
      soundmembers: 'assets/sounds/family_members/youngerbrother.wav',
      imagemembers: 'assets/images/family_members/family_younger_brother.png',
      arabic: 'أخ أصغر',
    ),
    const family_members(
      englishmembers: 'Older Sister',
      japanesememebers: '姉',
      soundmembers: 'assets/sounds/family_members/oldersister.wav',
      imagemembers: 'assets/images/family_members/family_older_sister.png',
      arabic: 'أخت أكبر',
    ),
    const family_members(
      englishmembers: 'Younger Sister',
      japanesememebers: '妹',
      soundmembers: 'assets/sounds/family_members/youngersister.wav',
      imagemembers: 'assets/images/family_members/family_younger_sister.png',
      arabic: 'أخت أصغر',
    ),
    const family_members(
      englishmembers: 'Grandmother',
      japanesememebers: '祖母',
      soundmembers: 'assets/sounds/family_members/grandmother.wav',
      imagemembers: 'assets/images/family_members/family_grandmother.png',
      arabic: 'جدة',
    ),
    const family_members(
      englishmembers: 'Grandfather',
      japanesememebers: '祖父',
      soundmembers: 'assets/sounds/family_members/grandfather.wav',
      imagemembers: 'assets/images/family_members/family_grandfather.png',
      arabic: 'جد',
    ),
  ];

  final ap.AudioPlayer _player = ap.AudioPlayer();

  set path(String path) {}

  void _playSound(String path) async {
    await _player.stop();
    await _player.play(ap.DeviceFileSource(path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1F1D),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF0A3702),
        centerTitle: true,
        title: const Text(
          '👨‍👩‍👧‍👦 Family Members',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 4,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          final member = familyMembers[index];
          return GestureDetector(
            onTap: () => _playSound(member.soundmembers!),
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF2E6E23), Color(0xFF3E8E33)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    member.imagemembers!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  member.englishmembers!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Text(
                      'Japanese: ${member.japanesememebers!}',
                      style: const TextStyle(
                        color: Color(0xFFE0F7FA),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Arabic: ${member.arabic!}',
                      style: const TextStyle(
                        color: Color(0xFFDDE5E8),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.volume_up, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }

  // Removed custom AssetSource constructor as it's not needed.
}
