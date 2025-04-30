import 'package:flutter/material.dart';
import 'package:toku/screens/number.dart' show NumbersPage;
import 'package:toku/screens/colorsPage.dart';
import 'package:toku/screens/phrases_page.dart';
import 'Package:toku/screens/family_member_page.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String textW = '';

  late Color colorW;

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 146, 91, 33),
        title: Text('TOKU'),
      ),
      body: Column(
        children: [
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
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return familyMemberPage();
                  },
                ),
              );
            },
            textW: 'Family Members',
            colorW: const Color.fromARGB(255, 32, 80, 23),
          ),
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
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return PhrasesPage();
                  },
                ),
              );
            },

            textW: 'Phrases',
            colorW: const Color.fromARGB(255, 179, 131, 66),
          ),
        ],
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: colorW,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 5),
        height: 65,
        width: double.infinity,
        child: Center(
          child: Text(
            '$textW',
            style: TextStyle(fontSize: 30, height: 1.5, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
