import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('MongoId Validator Tests', () {
    test('Valid MongoDB ObjectIds', () {
      expect('507f1f77bcf86cd799439011'.isMongoId, isTrue);
      expect('507F1F77BCF86CD799439011'.isMongoId, isTrue);
      expect(isMongoId('aaaaaaaaaaaaaaaaaaaaaaaa'), isTrue);
    });

    test('Invalid MongoDB ObjectIds', () {
      expect('507f1f77bcf86cd79943901'.isMongoId, isFalse); // too short
      expect('507f1f77bcf86cd7994390111'.isMongoId, isFalse); // too long
      expect('zzzf1f77bcf86cd799439011'.isMongoId, isFalse);
      expect(''.isMongoId, isFalse);
    });
  });
}
