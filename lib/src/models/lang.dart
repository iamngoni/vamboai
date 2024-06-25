//
//  vamboai
//  lang.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

final class Lang {
  const Lang({required this.name, required this.script, required this.code});
  final String name;
  final String? script;
  final String code;

  factory Lang.fromJson(Map<String, dynamic> json) {
    return Lang(
      name: json['name'].toString(),
      script: json['script'] as String?,
      code: json['code'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'script': script,
      'code': code,
    };
  }

  @override
  String toString() {
    return name;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Lang &&
        other.name == name &&
        other.script == script &&
        other.code == code;
  }

  @override
  int get hashCode {
    return name.hashCode ^ script.hashCode ^ code.hashCode;
  }
}
