import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('StrongPassword Validator Tests', () {
    test('Strong passwords with defaults', () {
      expect('Abcd1234!'.isStrongPassword(), isTrue);
      expect(isStrongPassword(r'P@ssw0rd'), isTrue);
    });

    test('Weak passwords with defaults', () {
      expect('weak'.isStrongPassword(), isFalse);
      expect('alllowercase1!'.isStrongPassword(), isFalse); // no uppercase
      expect('NoNumbers!'.isStrongPassword(), isFalse);
      expect('NoSymbol123'.isStrongPassword(), isFalse);
    });

    test('Custom thresholds', () {
      expect(
        'abcdefgh'.isStrongPassword(
          minUppercase: 0,
          minNumbers: 0,
          minSymbols: 0,
        ),
        isTrue,
      );
      expect(
        'short'.isStrongPassword(
          minLength: 4,
          minUppercase: 0,
          minNumbers: 0,
          minSymbols: 0,
        ),
        isTrue,
      );
    });
  });
}
