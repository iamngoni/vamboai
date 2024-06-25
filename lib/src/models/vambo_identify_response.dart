//
//  vamboai
//  vambo_identify_response.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

import 'lang.dart';

/// A class representing the response from the Vambo AI identify API.
final class VamboIdentifyResponse {
  /// Constructs a [VamboIdentifyResponse] with the given [primary] language and [additional] languages.
  const VamboIdentifyResponse({
    required this.primary,
    required this.additional,
  });

  /// Creates a [VamboIdentifyResponse] instance from a JSON map.
  ///
  /// The [json] parameter must contain the keys 'primary' and 'additional' with appropriate values.
  factory VamboIdentifyResponse.fromJson(Map<String, dynamic> json) {
    return VamboIdentifyResponse(
      primary: Lang.fromJson(json['primary'] as Map<String, dynamic>),
      additional: List<Lang>.from(
        (json['additional'] as List)
            .map((x) => Lang.fromJson(x as Map<String, dynamic>)),
      ),
    );
  }

  /// The primary language identified.
  final Lang primary;

  /// A list of additional languages identified.
  final List<Lang> additional;

  /// Converts the [VamboIdentifyResponse] instance to a JSON map.
  ///
  /// Returns a map with keys 'primary' and 'additional' representing the languages.
  Map<String, dynamic> toJson() {
    return {
      'primary': primary.toJson(),
      'additional': additional.map((x) => x.toJson()).toList(),
    };
  }

  /// Returns a string representation of the [VamboIdentifyResponse].
  ///
  /// The string representation is the same as the primary language's string representation.
  @override
  String toString() {
    return primary.toString();
  }

  /// Compares this [VamboIdentifyResponse] with another for equality.
  ///
  /// Two [VamboIdentifyResponse] instances are equal if their [primary] and [additional] fields are equal.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VamboIdentifyResponse &&
        other.primary == primary &&
        other.additional == additional;
  }

  /// Computes the hash code for the [VamboIdentifyResponse].
  ///
  /// The hash code is based on the [primary] and [additional] fields.
  @override
  int get hashCode {
    return primary.hashCode ^ additional.hashCode;
  }
}
