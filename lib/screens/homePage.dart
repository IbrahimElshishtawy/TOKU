import 'package:flutter/material.dart';
import 'package:toku/screens/Number.dart' show NumbersPage;
import 'package:toku/screens/colorsPage.dart';
import 'package:toku/screens/phrasesPage.dart';
import 'Package:toku/screens/familyMemberPage.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String TextW = '';

  late Color colorW ;

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
          category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
               )
               );
             },
            TextW: 'Number',
             colorW: const Color.fromARGB(255, 255, 186, 1),
            ),
           category(
             onTap: ()
             {
               Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (BuildContext context) {
                       return familyMemberPage();
                     },
                   )
               );
             },
            TextW: 'Family Members',
             colorW: const Color.fromARGB(255, 32, 80, 23),
           ),
           category(
             onTap: ()
             {
               Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (BuildContext context) {
                       return colorsPage();
                     },
                   )
               );
             },
             TextW: 'Colors',
             colorW: const Color.fromARGB(255, 33, 51, 85),
           ),
           category(

             onTap: ()
             {
               Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (BuildContext context) {
                       return phrasesPage();
                     },
                   )
               );
             },

             TextW: 'Phrases',
             colorW: const Color.fromARGB(255, 179, 131, 66),
           ),
        ],
      ),
    ),
  );
}

class category extends StatelessWidget {
  category({this.TextW, this.colorW,this.onTap});
  String? TextW;
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
            '$TextW',
            style : TextStyle(
              fontSize: 30,
              height: 1.5,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
