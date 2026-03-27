import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Base58 Validator Tests', () {
    test('Valid base58', () {
      expect('3yDKLZJ4PC1HE4Y8L8Esx'.isBase58, isTrue);
      expect('1BgGZ9tcN4rm9KBzNd7iFaNWEjc2xewGuk'.isBase58, isTrue); // Bitcoin address
    });

    test('Invalid base58', () {
      expect('hello 0OIl world'.isBase58, isFalse);
      expect(''.isBase58, isFalse);
      expect('1BgGZ9tcN4rm9KBzNd7iFaNWEj02xewGuk'.isBase58, isFalse); // contains '0'
    });
  });
}
