/// The `vamboai` library provides access to Vambo AI functionalities.
///
/// This library exports the models and main VamboAI class needed to interact with
/// the Vambo AI API.
///
/// Usage:
/// ```dart
/// import 'package:vamboai/vamboai.dart';
///
/// void main() {
///   final ai = VamboAI.fromAPIKey('your_api_key');
///   // Use the VamboAI instance to call the API
/// }
/// ```

library vamboai;

export 'src/models/models.dart';
export 'src/vamboai.dart';
