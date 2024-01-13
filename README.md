# Unique Name Generator (Dart Package)

This Dart package specializes in generating random and unique names.

**Note:** This is a Dart adaptation of the npm package [unique-names-generator](https://www.npmjs.com/package/unique-names-generator).

## 🚀 Features

- **Built-in Dictionaries:** A variety of default dictionaries included.
- **Customization:** Ability to use custom dictionaries.

## 🕹️ How to Use

### Configuration Options
Create a `Config()` object with the following parameters for the generator:
- `length`: Number of words to generate.
- `separator`: Character to separate words (default '_').
- `dictionaries`: Sources of words (choose from predefined or add custom ones).
- `style`: Desired style for word generation.

### Style Options
- `Style.lowerCase`
- `Style.capital`
- `Style.upperCase`

### Predefined Dictionaries
- `adjectives`
- `animals`
- `colors`
- `countries`
- `languages`
- `names`
- `starWars`

### Example Code
```dart
final generator = UniqueNamesGenerator(
      config: Config(
        dictionaries: [adjectives, animals, colors]
      ),
    );

final word = generator.generate();
