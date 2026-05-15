import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart' hide isIn;

void main() {
  group('In Validator Tests', () {
    const colors = ['red', 'green', 'blue'];

    test('Value in list', () {
      expect('red'.isIn(colors), isTrue);
      expect(isIn('blue', colors), isTrue);
    });

    test('Value not in list', () {
      expect('yellow'.isIn(colors), isFalse);
      expect(isIn('', colors), isFalse);
    });
  });
}
