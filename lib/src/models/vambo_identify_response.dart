//
//  vamboai
//  vambo_identify_response.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

import 'lang.dart';

final class VamboIdentifyResponse {
  const VamboIdentifyResponse({
    required this.primary,
    required this.additional,
  });

  factory VamboIdentifyResponse.fromJson(Map<String, dynamic> json) {
    return VamboIdentifyResponse(
      primary: Lang.fromJson(json['primary'] as Map<String, dynamic>),
      additional: List<Lang>.from(
        (json['additional'] as List)
            .map((x) => Lang.fromJson(x as Map<String, dynamic>)),
      ),
    );
  }

  final Lang primary;
  final List<Lang> additional;

  Map<String, dynamic> toJson() {
    return {
      'primary': primary.toJson(),
      'additional': additional.map((x) => x.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return primary.toString();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VamboIdentifyResponse &&
        other.primary == primary &&
        other.additional == additional;
  }

  @override
  int get hashCode {
    return primary.hashCode ^ additional.hashCode;
  }
}
