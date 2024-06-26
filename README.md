# VamboAI

[![Pub Version](https://img.shields.io/pub/v/vamboai)](https://pub.dev/packages/vamboai)
[![Pub Likes](https://img.shields.io/pub/likes/vamboai)](https://pub.dev/packages/vamboai)
[![Pub Points](https://img.shields.io/pub/points/vamboai)](https://pub.dev/packages/vamboai/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/vamboai)](https://pub.dev/packages/vamboai/score)
[![Github commit activity](https://img.shields.io/github/commit-activity/m/iamngoni/vamboai)](https://github.com/iamngoni/vamboai)
[![Github contributors](https://img.shields.io/github/contributors/iamngoni/vamboai)](https://github.com/iamngoni/vamboai)
[![Github stars](https://img.shields.io/github/stars/iamngoni/vamboai?style=social)](https://github.com/iamngoni/vamboai)
[![GitHub](https://img.shields.io/github/license/iamngoni/vamboai)](https://github.com/iamngoni/vamboai/blob/master/LICENSE)
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Twitter/X](https://img.shields.io/twitter/url?label=iamngoni_&style=social&url=https%3A%2F%2Ftwitter.com%2Fiamngoni_)](https://twitter.com/iamngoni_)

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis


VamboAI is a Dart package that provides access to the Vambo AI API for language identification and translation. This package allows you to interact with the Vambo AI API in a simple and efficient manner.

## API Key

To use the Vambo AI API, you need to obtain an API key. Please visit the [Vambo AI Studio](https://studio.vambo.ai/) to create an account and obtain your API key.

## Supported Languages

Please refer to the [Vambo AI API documentation](https://docs.vambo.ai/languages/introduction) for a list of supported languages.

## Features

- Identify the language of a given text.
- Translate text between various supported languages.
- Supports a wide range of languages commonly used in Africa and beyond.

## Installation

Add `vamboai` to your `pubspec.yaml`:

```yaml
dependencies:
  vamboai: ^0.0.1
 ```

Then run:
```sh
dart pub get
```

## Usage

Import the vamboai package:
```dart
import 'package:vamboai/vamboai.dart';
```

Create an instance of VamboAI using your API key:
```dart
void main() async {
  final ai = VamboAI.fromAPIKey('your_api_key');

  // Identify the language of a given text
  final response = await ai.identify('Hello, how are you?');
  print('Primary Language: ${response.primary.name}');
  print('Additional Languages: ${response.additional.map((lang) => lang.name).join(', ')}');

  // Translate text from English to French
  final tResponse = await ai.translate(
    'Hello, how are you?',
    from: Language.english,
    to: Language.french,
  );
  print('Translation: ${tResponse.output}');
}
```

## Error Handling
All errors from the Vambo AI API are thrown as `VamboException`.

```dart
try {
  final response = await vambo.identify('Some text');
} catch (e) {
  print(e); // Handle the exception
}
```

## Contributing

Contributions to the VamboAI library are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

## License

This library is distributed under the MIT License. See the [LICENSE](LICENSE) file in the repository for more information.