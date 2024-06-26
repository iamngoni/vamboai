//
//  vamboai
//  vamboai.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

import 'dart:convert';
import 'dart:io';

import 'models/language.dart';
import 'models/vambo_exception.dart';
import 'models/vambo_identify_response.dart';
import 'models/vambo_response.dart';

/// A class that provides methods to interact with the Vambo AI API.
class VamboAI {
  /// Private constructor for the [VamboAI] class.
  /// Use the [VamboAI.fromAPIKey] factory constructor to create an instance.
  VamboAI._(String apiKey)
      : _apiKey = apiKey,
        _baseUrl = 'https://api.vambo.ai/v1',
        _httpClient = HttpClient();

  /// Factory constructor to create an instance of [VamboAI] using the provided
  /// [apiKey].
  factory VamboAI.fromAPIKey(String apiKey) {
    assert(apiKey.isNotEmpty, 'API key cannot be null or empty');
    return VamboAI._(apiKey);
  }

  /// The API key used for authentication with the Vambo AI API.
  final String _apiKey;

  /// The base URL of the Vambo AI API.
  final String _baseUrl;

  /// The HTTP client used for making API requests.
  final HttpClient _httpClient;

  /// Identifies the language of the given [input] text using the Vambo AI API.
  ///
  /// Returns a [VamboIdentifyResponse] object containing the identification result.
  ///
  /// Throws a [VamboException] if the API request fails.
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
        final data = json.decode(responseBody) as Map<String, dynamic>;
        return VamboIdentifyResponse.fromJson(data);
      } else if (response.statusCode == 422) {
        // Could be unsupported language or something else throw with detail
        final responseBody = await response.transform(utf8.decoder).join();
        final data = json.decode(responseBody) as Map<String, dynamic>;
        throw VamboException(data['detail'].toString());
      } else {
        throw VamboException('Failed to identify text');
      }
    } catch (e, s) {
      throw VamboException.from(e, stacktrace: s);
    }
  }

  /// Translates the given [input] text from the source language [from] to the target language [to] using the Vambo AI API.
  ///
  /// Returns a [VamboResponse] object containing the translation result.
  ///
  /// Throws a [VamboException] if the API request fails.
  Future<VamboResponse> translate(
    String input, {
    required Language from,
    required Language to,
  }) async {
    try {
      final url = Uri.parse('$_baseUrl/translate/text');
      final requestBody = json.encode({
        'text': input,
        'source_lang': from.code,
        'target_lang': to.code,
      });
      final request = await _httpClient.postUrl(url)
        ..headers.add('Authorization', 'Bearer $_apiKey')
        ..write(requestBody);
      final response = await request.close();

      if (response.statusCode == 200) {
        final responseBody = await response.transform(utf8.decoder).join();
        final data = json.decode(responseBody);
        return VamboResponse.fromJson(data as Map<String, dynamic>);
      } else if (response.statusCode == 422) {
        // Could be unsupported language or something else throw with detail
        final responseBody = await response.transform(utf8.decoder).join();
        final data = json.decode(responseBody);
        throw VamboException(data['detail'].toString());
      } else {
        throw VamboException('Failed to translate text');
      }
    } catch (e, s) {
      throw VamboException.from(e, stacktrace: s);
    }
  }
}
