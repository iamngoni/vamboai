//
//  vamboai
//  main.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

import 'package:vamboai/vamboai.dart';

void main() async {
  final ai = VamboAI.fromAPIKey('your_api_key');

  // Identify the language of a given text
  final response = await ai.identify('Hello, how are you?');
  print('Primary Language: ${response.primary.name}');
  print(
      'Additional Languages: ${response.additional.map((lang) => lang.name).join(', ')}');

  // Translate text from English to French
  final tResponse = await ai.translate(
    'Hello, how are you?',
    from: Language.english,
    to: Language.french,
  );
  print('Translation: ${tResponse.output}');
}
