class Number {
  final String? imageNumber;
  final String? japaneseNumber;
  final String? englishNumber;
  final String? soundNumber;

  const Number({
    required this.imageNumber,
    required this.japaneseNumber,
    required this.englishNumber,
    required this.soundNumber,
  });
}

// ignore: camel_case_types
class family_members {
  final String? imagemembers;
  final String? japanesememebers;
  final String? englishmembers;
  final String? soundmembers;

  final String? arabic;

  const family_members({
    required this.imagemembers,
    required this.japanesememebers,
    required this.englishmembers,
    required this.soundmembers,
    required this.arabic,
  });
}

// ignore: camel_case_types
class colors {
  final String? imagecolors;
  final String? japanesecolors;
  final String? englishcolors;
  final String? romajicolors;
  final String? soundcolors;

  colors({
    this.imagecolors,
    this.japanesecolors,
    this.englishcolors,
    this.romajicolors,
    this.soundcolors,
  });
}

class DayItem {
  final String englishDay;
  final String japaneseDay;
  final String imageDay;
  final String soundDay;

  const DayItem({
    required this.englishDay,
    required this.japaneseDay,
    required this.imageDay,
    required this.soundDay,
  });
}

class Phrase {
  final String english;
  final String arabic;
  final String japanese;
  final String romaji;

  Phrase({
    required this.english,
    required this.arabic,
    required this.japanese,
    required this.romaji,
  });
}
