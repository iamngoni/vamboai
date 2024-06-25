//
//  vamboai
//  vambo_response.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

final class VamboResponse {
  const VamboResponse({required this.output});

  factory VamboResponse.fromJson(Map<String, dynamic> json) {
    return VamboResponse(
      output: json['output'].toString(),
    );
  }

  final String output;

  Map<String, dynamic> toJson() {
    return {
      'output': output,
    };
  }

  @override
  String toString() {
    return output;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VamboResponse && other.output == output;
  }

  @override
  int get hashCode {
    return output.hashCode;
  }
}
