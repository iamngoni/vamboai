//
//  vamboai
//  vambo_response.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

import 'package:meta/meta.dart';

/// A class representing the response from the Vambo AI API.
@immutable
final class VamboResponse {
  /// Constructs a [VamboResponse] with the given [output].
  const VamboResponse({required this.output});

  /// Creates a [VamboResponse] instance from a JSON map.
  ///
  /// The [json] parameter must contain the key 'output' with a string value.
  factory VamboResponse.fromJson(Map<String, dynamic> json) {
    return VamboResponse(
      output: json['output'].toString(),
    );
  }

  /// The output text from the Vambo AI API.
  final String output;

  /// Converts the [VamboResponse] instance to a JSON map.
  ///
  /// Returns a map with a single key 'output' representing the output text.
  Map<String, dynamic> toJson() {
    return {
      'output': output,
    };
  }

  /// Returns a string representation of the [VamboResponse].
  ///
  /// The string representation is the same as the output text.
  @override
  String toString() {
    return output;
  }

  /// Compares this [VamboResponse] with another for equality.
  ///
  /// Two [VamboResponse] instances are equal if their [output] fields are
  ///  equal.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VamboResponse && other.output == output;
  }

  /// Computes the hash code for the [VamboResponse].
  ///
  /// The hash code is based on the [output] field.
  @override
  int get hashCode {
    return output.hashCode;
  }
}
