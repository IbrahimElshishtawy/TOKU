// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:toku/screens/number.dart' show NumbersPage;
import 'package:toku/screens/colorsPage.dart';
import 'package:toku/screens/family_member_page.dart';
import 'package:toku/screens/phrases_page.dart';
import 'package:toku/screens/days_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFDF6EC),
        appBar: AppBar(
          backgroundColor: const Color(0xFF6C4A2A),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'TOKU',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/image_page/TOKU.png",
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Category(
                icon: Icons.format_list_numbered,
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => NumbersPage()),
                    ),
                textW: 'Numbers',
                colorW: const Color(0xFFFFC107),
              ),
              const SizedBox(height: 16),

              Category(
                icon: Icons.family_restroom,
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => FamilyMemberPage()),
                    ),
                textW: 'Family Members',
                colorW: const Color(0xFF4CAF50),
              ),
              const SizedBox(height: 16),

              Category(
                icon: Icons.color_lens,
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ColorsPage()),
                    ),
                textW: 'Colors',
                colorW: const Color(0xFF3F51B5),
              ),
              const SizedBox(height: 16),

              Category(
                icon: Icons.chat,
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PhrasesPage()),
                    ),
                textW: 'Phrases',
                colorW: const Color(0xFF9C27B0),
              ),
              const SizedBox(height: 16),

              Category(
                icon: Icons.calendar_today,
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DaysLearningPage()),
                    ),
                textW: 'Days',
                colorW: const Color(0xFF00BCD4),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.textW,
    required this.colorW,
    required this.onTap,
    required this.icon,
  });

  final String textW;
  final Color colorW;
  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(14),
        height: 80,
        decoration: BoxDecoration(
          color: colorW,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: colorW.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white24,
              ),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                textW,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
