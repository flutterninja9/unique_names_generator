import 'dart:math';

import 'package:unique_names_generator/src/config.dart';
import 'package:unique_names_generator/src/exceptions.dart';

class UniqueNamesGenerator {
  final Config config;

  UniqueNamesGenerator({required this.config});

  String generate() {
    if (config.dictionaries.isEmpty) {
      throw UniqueNamesGeneratorException(
        'Please provide a dictionary\nPossible values could be adjectives, animals, colors, countries, languages, names, starWars',
      );
    }

    if (config.length <= 0) {
      throw UniqueNamesGeneratorException(
        'length must be greater than 0',
      );
    }

    if (config.length > config.dictionaries.length) {
      throw UniqueNamesGeneratorException(
        'length must be smaller than ${config.dictionaries.length + 1}',
      );
    }

    final _generatedList = [];
    for (int i = 0; i < config.length; i++) {
      final wordList = config.dictionaries[i];
      String word = wordList[Random().nextInt(wordList.length)];

      switch (config.style) {
        case Style.lowerCase:
          word = word.toLowerCase();
          break;
        case Style.capital:
          final splitted = word.split("");
          word = splitted.first.toUpperCase() +
              splitted.getRange(1, splitted.length).toList().join();
          break;
        case Style.upperCase:
          word = word.toUpperCase();
          break;
      }
      _generatedList.add(word);
    }

    return _generatedList.join(config.seperator);
  }
}
