//
//  vamboai
//  lang.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

import 'package:meta/meta.dart';

/// A class representing a language with its name, script, and ISO code.
@immutable
class Lang {
  /// Constructs a [Lang] instance with the given [name], [script], and [code].
  ///
  /// The [name] and [code] parameters are required. The [script] parameter is
  ///  optional.
  const Lang({required this.name, required this.code, this.script});

  /// Creates a [Lang] instance from a JSON object.
  ///
  /// The [json] parameter is a [Map] containing the language information.
  factory Lang.fromJson(Map<String, dynamic> json) {
    return Lang(
      name: json['name'].toString(),
      script: json['script'] as String?,
      code: json['code'].toString(),
    );
  }

  /// The name of the language.
  final String name;

  /// The script used for the language, if any.
  final String? script;

  /// The ISO code of the language.
  final String code;

  /// Converts this [Lang] instance to a JSON object.
  ///
  /// Returns a [Map] containing the language information.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'script': script,
      'code': code,
    };
  }

  /// Returns a string representation of this [Lang] instance.
  ///
  /// The string representation is the [name] of the language.
  @override
  String toString() {
    return name;
  }

  /// Checks if this [Lang] instance is equal to another object.
  ///
  /// Two [Lang] instances are considered equal if their [name], [script],
  ///  and [code] are the same.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Lang &&
        other.name == name &&
        other.script == script &&
        other.code == code;
  }

  /// Returns a hash code for this [Lang] instance.
  ///
  /// The hash code is computed based on the [name], [script], and [code]
  ///  properties.
  @override
  int get hashCode {
    return name.hashCode ^ script.hashCode ^ code.hashCode;
  }
}
