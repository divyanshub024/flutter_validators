import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('UUID Validator Tests', () {
    test('Valid UUIDs', () {
      expect('123e4567-e89b-12d3-a456-426614174000'.isUUID, isTrue);
      expect('550e8400-e29b-41d4-a716-446655440000'.isUUID, isTrue);
      expect('8bA4A1C9-5e19-4F5t-b5a8-44243b1E2D4A'.isUUID, isFalse); // invalid hex char 't'
      expect('8bA4A1C9-5e19-4F5b-b5a8-44243b1E2D4A'.isUUID, isTrue);
    });

    test('Invalid UUIDs', () {
      expect('invalid-uuid'.isUUID, isFalse);
      expect('123e4567-e89b-12d3-a456-42661417400'.isUUID, isFalse); // Too short
      expect(''.isUUID, isFalse);
    });
  });
}
