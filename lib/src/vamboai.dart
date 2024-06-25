//
//  vamboai
//  vamboai.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

import 'dart:convert';
import 'dart:io';

import 'models/vambo_exception.dart';
import 'models/vambo_identify_response.dart';

class VamboAI {
  VamboAI._(String apiKey)
      : _apiKey = apiKey,
        _baseUrl = 'https://api.vambo.ai/v1',
        _httpClient = HttpClient();

  factory VamboAI.fromAPIKey(String apiKey) {
    return VamboAI._(apiKey);
  }

  final String _apiKey;
  final String _baseUrl;
  final HttpClient _httpClient;

  Future<VamboIdentifyResponse> identify(String input) async {
    try {
      final url = Uri.parse('$_baseUrl/identify/text');
      final requestBody = json.encode({'text': input});
      final request = await _httpClient.postUrl(url)
        ..headers.add('Authorization', 'Bearer $_apiKey')
        ..write(requestBody);
      final response = await request.close();

      if (response.statusCode == 200) {
        final responseBody = await response.transform(utf8.decoder).join();
        final data = json.decode(responseBody);
        return VamboIdentifyResponse.fromJson(data as Map<String, dynamic>);
      } else {
        throw VamboException('Failed to identify text');
      }
    } catch (e, s) {
      throw VamboException.from(e, stacktrace: s);
    }
  }
}
