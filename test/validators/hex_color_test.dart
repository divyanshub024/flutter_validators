import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Hex Color Validator Tests', () {
    test('Valid Hex Colors', () {
      expect('#fff'.isHexColor, isTrue);
      expect('ff0000'.isHexColor, isTrue);
      expect('#ff0000'.isHexColor, isTrue);
      expect('#FFF'.isHexColor, isTrue);
      expect('#AABBCC'.isHexColor, isTrue);
    });

    test('Invalid Hex Colors', () {
      expect('invalid'.isHexColor, isFalse);
      expect('#ff000'.isHexColor, isFalse); // 5 chars
      expect('#gggggg'.isHexColor, isFalse); // non-hex
      expect(''.isHexColor, isFalse);
    });
  });
}
