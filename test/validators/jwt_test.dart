import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('JWT Validator Tests', () {
    test('Valid JWTs', () {
      expect('eyJhbGci.eyJzdWIi.SflKxwRJ'.isJWT, isTrue);
      expect('aaa.bbb.'.isJWT, isTrue); // empty signature allowed
      expect(isJWT('header-1.payload_2.sig3'), isTrue);
    });

    test('Invalid JWTs', () {
      expect('eyJhbGci.eyJzdWIi'.isJWT, isFalse); // two segments
      expect('a.b.c.d'.isJWT, isFalse); // four segments
      expect('.b.c'.isJWT, isFalse); // empty header
      expect('a b.c.d'.isJWT, isFalse); // invalid char
      expect(''.isJWT, isFalse);
    });
  });
}
