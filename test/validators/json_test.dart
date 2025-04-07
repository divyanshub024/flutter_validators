import 'package:flutter_validators/validators/json.dart';
import 'package:test/test.dart';

void main() {
  group('JSON Validator Tests', () {
    group('Valid JSON', () {
      test('simple values', () {
        expect('123'.isJson, isTrue);
        expect('42.5'.isJson, isTrue);
        expect('-17.2'.isJson, isTrue);
        expect('"hello"'.isJson, isTrue);
        expect('true'.isJson, isTrue);
        expect('false'.isJson, isTrue);
        expect('null'.isJson, isTrue);
      });

      test('objects', () {
        expect('{"name":"John"}'.isJson, isTrue);
        expect('{"age":30,"city":"New York"}'.isJson, isTrue);
        expect('{"nested":{"key":"value"}}'.isJson, isTrue);
        expect('{"array":[1,2,3]}'.isJson, isTrue);
        expect('{"empty":{}}'.isJson, isTrue);
      });

      test('arrays', () {
        expect('[1,2,3]'.isJson, isTrue);
        expect('["a","b","c"]'.isJson, isTrue);
        expect('[[1,2],[3,4]]'.isJson, isTrue);
        expect('[{"id":1},{"id":2}]'.isJson, isTrue);
        expect('[]'.isJson, isTrue);
      });

      test('special characters', () {
        expect('{"special":"\\n\\t\\r"}'.isJson, isTrue);
        expect('{"unicode":"\\u0041"}'.isJson, isTrue);
        expect('{"quote":"\\"quoted\\""}'.isJson, isTrue);
      });
    });

    group('Invalid JSON', () {
      test('empty or invalid types', () {
        expect(''.isJson, isFalse);
        expect('abc'.isJson, isFalse);
        expect('undefined'.isJson, isFalse);
        expect('NaN'.isJson, isFalse);
      });

      test('malformed objects', () {
        expect('{'.isJson, isFalse);
        expect('}'.isJson, isFalse);
        expect('{name:"John"}'.isJson, isFalse);
        expect('{"name":}'.isJson, isFalse);
        expect('{"name","John"}'.isJson, isFalse);
        expect('{"name":"John",}'.isJson, isFalse);
      });

      test('malformed arrays', () {
        expect('['.isJson, isFalse);
        expect(']'.isJson, isFalse);
        expect('[1,2,]'.isJson, isFalse);
        expect('[1,2'.isJson, isFalse);
        expect('[,]'.isJson, isFalse);
      });

      test('invalid strings', () {
        expect('"unterminated'.isJson, isFalse);
      });
    });
  });
}
