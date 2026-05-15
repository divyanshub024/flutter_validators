import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Blacklist / Whitelist Sanitizer Tests', () {
    test('blacklist removes listed characters', () {
      expect(blacklist('hello world', 'lo'), 'he wrd');
      expect('abc123'.blacklist('123'), 'abc');
    });

    test('whitelist keeps only listed characters', () {
      expect(whitelist('hello world', 'lo'), 'llool');
      expect('abc123'.whitelist('123'), '123');
    });
  });
}
