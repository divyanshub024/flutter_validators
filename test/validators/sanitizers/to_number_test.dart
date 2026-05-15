import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('ToNumber Sanitizer Tests', () {
    test('toInt', () {
      expect(toInt('42'), 42);
      expect(toInt('ff', radix: 16), 255);
      expect(toInt('abc'), isNull);
      expect('  7  '.toInt(), 7);
    });

    test('toFloat', () {
      expect(toFloat('3.14'), 3.14);
      expect(toFloat('abc'), isNull);
      expect('2.5'.toFloat(), 2.5);
    });

    test('toDate', () {
      expect(toDate('2024-01-15'), DateTime(2024, 1, 15));
      expect(toDate('not-a-date'), isNull);
      expect('2024-01-15'.toDate(), DateTime(2024, 1, 15));
    });
  });
}
