import 'package:flutter/material.dart';
import 'package:toku/models/Items_family_member.dart';
import 'package:toku/models/models.dart';


class FamilyMemberPage extends StatelessWidget {
  FamilyMemberPage({super.key});

  final List<family_members> familyMembers = [
    const family_members(englishmembers:'daughter' , japanesememebers:'daughter' , soundmembers:'assets/sounds/family_members/daughter.wav' , imagemembers: 'assets/images/family_members/family_daughter.png'),
    const family_members(englishmembers:'son' , japanesememebers:'son' , soundmembers:'assets/sounds/family_members/son.wav' , imagemembers: 'assets/images/family_members/family_father.png'),
    const family_members(englishmembers:'older brother' , japanesememebers:'older' , soundmembers:'assets/sounds/family_members/olderbrother.wav' , imagemembers: 'assets/images/family_members/family_grandfather.png'),
    const family_members(englishmembers:'younger brother' , japanesememebers:'younger brother' , soundmembers:'assets/sounds/family_members/youngerbrother.wav' , imagemembers: 'assets/images/family_members/family_grandmother.png'),
    const family_members(englishmembers:'older sister' , japanesememebers:'older sister' , soundmembers:'assets/sounds/family_members/oldersister.wav' , imagemembers: 'assets/images/family_members/family_mother.png'),
    const family_members(englishmembers:'younger sister' , japanesememebers:'younger sister' , soundmembers:'assets/sounds/family_members/youngersister.wav' , imagemembers: 'assets/images/family_members/family_older_sister.png'),
    const family_members(englishmembers:'grandmother' , japanesememebers:'grandmother' , soundmembers:'assets/sounds/family_members/grandmother.wav' , imagemembers: 'assets/images/family_members/family_older_brother.png'),
    const family_members(englishmembers:'grandfather' , japanesememebers:'grandfather' , soundmembers:'assets/sounds/family_members/grandfather.wav' , imagemembers: 'assets/images/family_members/family_son.png'),
    const family_members(englishmembers:'younger brother' , japanesememebers:'younger brother' , soundmembers:'assets/sounds/family_members/younger_brother.wav' , imagemembers: 'assets/images/family_members/family_younger_brother.png'),
    const family_members(englishmembers:'younger sister' , japanesememebers:'kj' , soundmembers:'assets/sounds/family_members/younger_sister.wav' , imagemembers: 'assets/images/family_members/family_younger_sister.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          }, color: Colors.white,
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color.fromARGB(255, 10, 55, 2),
        title: const Text('Family Members', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: const Color(0xFF205017),
        child: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) {
            return Items_family(family: familyMembers[index],);
          },
        ),
      ),
    );
  }
}
