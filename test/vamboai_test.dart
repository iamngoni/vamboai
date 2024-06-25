import 'package:test/test.dart';
import 'package:vamboai/vamboai.dart';

void main() {
  group('VamboAI', () {
    late VamboAI vamboAI;

    setUp(() {
      vamboAI = VamboAI.fromAPIKey('test_api_key');
    });

    test('Constructor creates a non-null instance', () {
      expect(vamboAI, isNotNull);
    });
  });
}
