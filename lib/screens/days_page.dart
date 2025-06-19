import 'package:flutter/material.dart';

class DaysLearningPage extends StatelessWidget {
  const DaysLearningPage({super.key});

  final List<Map<String, String>> days = const [
    {'english': 'Monday', 'arabic': 'الإثنين', 'japanese': '月曜日 (Getsuyoubi)'},
    {'english': 'Tuesday', 'arabic': 'الثلاثاء', 'japanese': '火曜日 (Kayoubi)'},
    {
      'english': 'Wednesday',
      'arabic': 'الأربعاء',
      'japanese': '水曜日 (Suiyoubi)',
    },
    {'english': 'Thursday', 'arabic': 'الخميس', 'japanese': '木曜日 (Mokuyoubi)'},
    {'english': 'Friday', 'arabic': 'الجمعة', 'japanese': '金曜日 (Kinyoubi)'},
    {'english': 'Saturday', 'arabic': 'السبت', 'japanese': '土曜日 (Doyoubi)'},
    {'english': 'Sunday', 'arabic': 'الأحد', 'japanese': '日曜日 (Nichiyoubi)'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('🌞 Days of the Week'),
        backgroundColor: const Color(0xFF00BCD4),
        centerTitle: true,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: days.length,
          itemBuilder: (context, index) {
            final day = days[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.teal,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  day['english']!,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Text(
                      'Arabic: ${day['arabic']}',
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      'Japanese: ${day['japanese']}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
