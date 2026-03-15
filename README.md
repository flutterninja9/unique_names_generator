# Unique Name Generator (Dart Package)

This Dart package specializes in generating random and unique names.

**Note:** This is a Dart adaptation of the npm package [unique-names-generator](https://www.npmjs.com/package/unique-names-generator).

## 🚀 Features

- **Built-in Dictionaries:** A variety of default dictionaries included.
- **Customization:** Ability to use custom dictionaries.

## 🕹️ How to Use

### Configuration Options
Create a `Config()` object with the following parameters for the generator:
- `length`: Number of words to generate (default `3`). **Must match the number of dictionaries provided.**
- `separator`: Character to separate words (default `'_'`).
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

> **Note:** The `length` parameter must equal the number of dictionaries you pass. Since `length` defaults to `3`, always either pass exactly 3 dictionaries or set `length` explicitly.

```dart
// length defaults to 3 — provide exactly 3 dictionaries
final generator = UniqueNamesGenerator(
      config: Config(
        dictionaries: [adjectives, animals, colors],
      ),
    );

final word = generator.generate();

// Or set length explicitly to match your dictionaries
final generator2 = UniqueNamesGenerator(
      config: Config(
        length: 2,
        dictionaries: [adjectives, animals],
      ),
    );

final word2 = generator2.generate();
```

### Using a Random Seed

Pass an optional `randomSeed` to `generate()` to get reproducible output. Calling `generate()` with the same seed always returns the same name, which is useful for testing or deterministic name assignment.

```dart
final generator = UniqueNamesGenerator(
      config: Config(
        dictionaries: [adjectives, animals, colors]
      ),
    );

// Always produces the same result for a given seed
final word = generator.generate(randomSeed: 42);
```
