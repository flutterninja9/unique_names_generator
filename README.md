
Unique name generator is a dart package for generating random and unique names.

P.S: Port of https://www.npmjs.com/package/unique-names-generator

## 🚀 Features

It comes with a list of dictionaries out of the box, but you can also provide your custom ones.<br>


## 🕹️ Usage
A custom Config() object can be passed to generator object where:<br>
  length -> No of words you want to generate<br>
  seperator -> Seperator in between the words (defaults to '_');<br>
  dictionaries -> Source of words (use predefined or custom ones as per your usecase)<br>
  style -> Style in which you want the words to get generated<br>

  <h2>Possible values for</h2>
  <p>style: Style.lowerCase, Style.capital, Style.upperCase</p><br>

  <h2>Predefined dictionaries</h2>
  <p>adjectives, animals, colors, countries, languages, names, starWars</p>

```dart
final generator = UniqueNamesGenerator(
      // Config.fallback() can also be used
      config: Config(
        dictionaries: [adjectives, animals, colors]
      ),
    );

final word = generator.generate();
```
