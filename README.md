# Dart Promise

<img src="https://img.shields.io/pub/v/dart_promise?style=for-the-badge">
<img src="https://img.shields.io/github/last-commit/iamngoni/dart_promise">
<img src="https://img.shields.io/twitter/url?label=iamngoni_&style=social&url=https%3A%2F%2Ftwitter.com%2Fiamngoni_">

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis


This library provides a `Promise` class that emulates JavaScript-like promise functionality in Dart. It aims to simplify asynchronous programming in Dart, offering an alternative way to handle asynchronous operations with more control over error handling and chaining.

## Features

- **Promise Creation**: Easily create promises that encapsulate asynchronous operations.
- **Error Handling**: Robust error handling using `catchError` method, which allows continuation of promise chains even when errors occur.
- **Flexible Error Handlers**: Supports both synchronous and asynchronous error handlers through `FutureOr<T>`.

## Getting Started

To get started with the Dart Promise library, add it to your Dart project by including it in your `pubspec.yaml` file under dependencies:

```yaml
dependencies:
  dart_promise: ^0.0.1+1
```

## Usage

Here’s how you can use the Promise class to perform asynchronous operations and handle errors gracefully:

```dart
import 'package:dart_promise/dart_promise.dart';

void main() {
  // Create a new promise
  Promise<String> myPromise = Promise<String>((resolve, reject) {
    // Simulate an asynchronous operation like fetching data from a server
    Future.delayed(Duration(seconds: 1), () {
      resolve("Data fetched successfully!");
      // Uncomment the next line to simulate an error
      // reject("Failed to fetch data");
    });
  });

  // Using the promise
  myPromise
    .then((data) => print(data))
    .catchError((error) => print("Error: $error"));
}
```

## API Reference

- `Promise<T>(Executor<T> executor)`: Constructor to create a new promise. The executor function takes two parameters: resolve and reject which are used to settle the promise.
- `Future<T> catchError(OnRejected<T> onRejected)`: Method to handle errors in the promise chain. onRejected can be either a synchronous or asynchronous function.
- `Future<R> then<R>(OnFulfilled<T, R> onFulfilled)`: Method to handle successful completion of the promise chain. onFulfilled can be either a synchronous or asynchronous function.

## Contributing

Contributions to the Dart Promise library are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

## License

This library is distributed under the MIT License. See the [LICENSE](LICENSE) file in the repository for more information.