import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:unique_names_generator/unique_names_generator.dart';

void main() {
  test(
    'When empty dictionary is passed [UniqueNamesGeneratorException] should be thrown',
    () {
      final callback = UniqueNamesGenerator(
        config: Config(
          dictionaries: [],
        ),
      );

      expect(
        () => callback.generate(),
        throwsA(TypeMatcher<UniqueNamesGeneratorException>()),
      );
    },
  );

  test(
    'When length provided is less than 1 [UniqueNamesGeneratorException] should be thrown',
    () {
      final callback = UniqueNamesGenerator(
        config: Config(
          dictionaries: [adjectives, animals, names],
          length: 0,
        ),
      );

      expect(
        () => callback.generate(),
        throwsA(TypeMatcher<UniqueNamesGeneratorException>()),
      );
    },
  );

  test(
    'When length provided is more than provided dictionary\'s length [UniqueNamesGeneratorException] should be thrown',
    () {
      final callback = UniqueNamesGenerator(
        config: Config(
          dictionaries: [adjectives, animals, names],
          length: 4,
        ),
      );

      expect(
        () => callback.generate(),
        throwsA(TypeMatcher<UniqueNamesGeneratorException>()),
      );
    },
  );

  test(
    'Single word should be generated when length is 1',
    () {
      final word = UniqueNamesGenerator(
        config: Config(
          dictionaries: [adjectives, animals, names],
          length: 1,
        ),
      ).generate();

      expect(
        true,
        !word.contains('_'),
      );
    },
  );
}
