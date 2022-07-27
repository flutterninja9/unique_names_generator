import 'package:unique_names_generator/unique_names_generator.dart';

void main() {
  try {
    final generator = UniqueNamesGenerator(
      config: Config(
        dictionaries: [adjectives, animals, colors],
      ),
    );
    print(generator.generate());
  } on UniqueNamesGeneratorException catch (e) {
    print(e.reason);
  }
}
