import 'package:flutter/material.dart';
import 'package:toku/screens/number.dart' show NumbersPage;
import 'package:toku/screens/colorsPage.dart';
import 'package:toku/screens/family_member_page.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 108, 72, 42),
        title: const Center(
          child: Text(
            'TOKU',
            style: TextStyle(fontSize: 30, height: 1.5, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // ✅ صورة فوق الزرائر
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/image_page/TOKU.png",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // ✅ زرار Number
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return NumbersPage();
                    },
                  ),
                );
              },
              textW: 'Number',
              colorW: const Color.fromARGB(255, 255, 186, 1),
            ),
            const SizedBox(height: 15),
            // ✅ زرار Family Members
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FamilyMemberPage();
                    },
                  ),
                );
              },
              textW: 'Family Members',
              colorW: const Color.fromARGB(255, 32, 80, 23),
            ),
            const SizedBox(height: 15),
            // ✅ زرار Colors
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ColorsPage();
                    },
                  ),
                );
              },
              textW: 'Colors',
              colorW: const Color.fromARGB(255, 33, 51, 85),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    ),
  );
}

class Category extends StatelessWidget {
  Category({super.key, this.textW, this.colorW, this.onTap});

  String? textW;
  Color? colorW;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorW,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 65,
          width: double.infinity,
          child: Text(
            '$textW',
            style: const TextStyle(fontSize: 30, height: 1.5, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
