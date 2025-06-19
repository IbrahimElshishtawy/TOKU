import 'package:flutter/material.dart';
import 'package:toku/models/models.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  final List<Phrase> phrases = [
    Phrase(
      english: 'Good morning.',
      arabic: 'صباح الخير',
      japanese: 'おはようございます',
      romaji: 'Ohayou gozaimasu',
    ),
    Phrase(
      english: 'How are you?',
      arabic: 'كيف حالك؟',
      japanese: 'お元気ですか？',
      romaji: 'Ogenki desu ka?',
    ),
    Phrase(
      english: 'Thank you very much.',
      arabic: 'شكرًا جزيلًا',
      japanese: 'どうもありがとうございます',
      romaji: 'Dōmo arigatō gozaimasu',
    ),
    Phrase(
      english: 'I’m sorry.',
      arabic: 'أنا آسف',
      japanese: 'ごめんなさい',
      romaji: 'Gomen nasai',
    ),
    Phrase(
      english: 'See you later.',
      arabic: 'أراك لاحقًا',
      japanese: 'また後で',
      romaji: 'Mata ato de',
    ),
    Phrase(
      english: 'What’s your name?',
      arabic: 'ما اسمك؟',
      japanese: 'お名前は何ですか？',
      romaji: 'Onamae wa nan desu ka?',
    ),
    Phrase(
      english: 'I don’t understand.',
      arabic: 'أنا لا أفهم',
      japanese: 'わかりません',
      romaji: 'Wakarimasen',
    ),
    Phrase(
      english: 'Let’s go!',
      arabic: 'هيا بنا!',
      japanese: '行きましょう！',
      romaji: 'Ikimashou!',
    ),
    Phrase(
      english: 'Congratulations!',
      arabic: 'مبروك!',
      japanese: 'おめでとうございます！',
      romaji: 'Omedetou gozaimasu!',
    ),
    Phrase(
      english: 'Can you help me?',
      arabic: 'هل يمكنك مساعدتي؟',
      japanese: '手伝ってくれますか？',
      romaji: 'Tetsudatte kuremasu ka?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xFF9C27B0),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          final phrase = phrases[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xFF9C27B0), width: 1),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.english,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A148C),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Arabic: ${phrase.arabic}',
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 4),
                Text(
                  'Japanese: ${phrase.japanese}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.teal,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Romaji: ${phrase.romaji}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: const Color(0xFFF3E5F5),
    );
  }
}
