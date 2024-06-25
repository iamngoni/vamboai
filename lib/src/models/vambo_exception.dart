//
//  vamboai
//  vambo_exception.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

class VamboException implements Exception {
  VamboException(this.message, {this.stacktrace});

  factory VamboException.from(dynamic e, {StackTrace? stacktrace}) {
    return VamboException(
      e.toString(),
      stacktrace: stacktrace,
    );
  }

  final String message;
  final StackTrace? stacktrace;

  @override
  String toString() {
    return 'VamboException: $message, stacktrace: $stacktrace';
  }
}
