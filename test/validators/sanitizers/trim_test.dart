import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Trim Sanitizer Tests', () {
    test('trim whitespace and custom chars', () {
      expect(trim('  hello  '), 'hello');
      expect(trim('xxhelloxx', 'x'), 'hello');
      expect('xxhelloxx'.trimChars('x'), 'hello');
    });

    test('ltrim', () {
      expect(ltrim('  hello'), 'hello');
      expect(ltrim('xxhello', 'x'), 'hello');
      expect('--hello'.ltrimChars('-'), 'hello');
    });

    test('rtrim', () {
      expect(rtrim('hello  '), 'hello');
      expect(rtrim('helloxx', 'x'), 'hello');
      expect('hello--'.rtrimChars('-'), 'hello');
    });
  });
}
