import 'package:flutter/material.dart';
import 'package:toku/screens/number.dart' show NumbersPage;
import 'package:toku/screens/colorsPage.dart';
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
      backgroundColor:  Colors.brown,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 108, 72, 42),
        title: Center(child: Text('TOKU', style: TextStyle(fontSize: 30, height: 1.5, color: Colors.white),)),
      ),
      body: Column(
        children: [
          Spacer(flex: 1,),
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
          Spacer(flex: 1,),
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
          Spacer(flex: 1,),
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
          Spacer(flex: 4,),
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
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorW,
        ),
        margin: EdgeInsets.all(10),
        child: GestureDetector(
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
        ),
      ),
    );
  }
}
