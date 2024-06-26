//
//  vamboai
//  vambo_exception.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

/// A custom exception class for handling errors specific to the Vambo API.
class VamboException implements Exception {
  /// Constructs a [VamboException] with the given [message] and optional
  ///  [stacktrace].
  VamboException(this.message, {this.stacktrace});

  /// Creates a [VamboException] instance from another exception.
  ///
  /// The [e] parameter is the original exception. The optional [stacktrace]
  ///  parameter
  /// can be used to provide the stack trace associated with the exception.
  factory VamboException.from(dynamic e, {StackTrace? stacktrace}) {
    return VamboException(
      e.toString(),
      stacktrace: stacktrace,
    );
  }

  /// The error message describing the exception.
  final String message;

  /// The stack trace associated with the exception, if available.
  final StackTrace? stacktrace;

  /// Returns a string representation of the [VamboException].
  ///
  /// The string includes the [message] and the [stacktrace] if available.
  @override
  String toString() {
    return 'VamboException: $message, stacktrace: $stacktrace';
  }
}
