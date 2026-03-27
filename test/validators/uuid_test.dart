import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('UUID Validator Tests', () {
    test('Valid UUIDs', () {
      expect('123e4567-e89b-12d3-a456-426614174000'.isUUID, isTrue); // version 1, variant a
      expect('550e8400-e29b-41d4-a716-446655440000'.isUUID, isTrue); // version 4, variant a
      expect('8bA4A1C9-5e19-4F5b-b5a8-44243b1E2D4A'.isUUID, isTrue); // version 4, variant b
      expect('6ba7b810-9dad-11d1-80b4-00c04fd430c8'.isUUID, isTrue); // version 1
      expect('6ba7b811-9dad-31d1-80b4-00c04fd430c8'.isUUID, isTrue); // version 3
      expect('6ba7b812-9dad-41d1-80b4-00c04fd430c8'.isUUID, isTrue); // version 4
      expect('6ba7b814-9dad-51d1-80b4-00c04fd430c8'.isUUID, isTrue); // version 5
    });

    test('Invalid UUIDs', () {
      expect('8bA4A1C9-5e19-4F5t-b5a8-44243b1E2D4A'.isUUID, isFalse); // invalid hex char 't'
      expect('invalid-uuid'.isUUID, isFalse);
      expect('123e4567-e89b-12d3-a456-42661417400'.isUUID, isFalse); // Too short
      expect(''.isUUID, isFalse);

      // Invalid version (e.g. 2, 6, f)
      expect('6ba7b812-9dad-21d1-80b4-00c04fd430c8'.isUUID, isFalse); // version 2
      expect('6ba7b812-9dad-61d1-80b4-00c04fd430c8'.isUUID, isFalse); // version 6
      expect('6ba7b812-9dad-f1d1-80b4-00c04fd430c8'.isUUID, isFalse); // version f
      
      // Invalid variant (e.g. 7, c)
      expect('6ba7b812-9dad-41d1-70b4-00c04fd430c8'.isUUID, isFalse); // variant 7
      expect('6ba7b812-9dad-41d1-c0b4-00c04fd430c8'.isUUID, isFalse); // variant c
    });
  });
}
