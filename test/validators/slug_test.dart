import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart';

void main() {
  group('Slug Validator Tests', () {
    test('Valid slugs', () {
      expect('my-blog-post'.isSlug, isTrue);
      expect('post-123'.isSlug, isTrue);
      expect('hello'.isSlug, isTrue);
      expect(isSlug('a-b-c'), isTrue);
    });

    test('Invalid slugs', () {
      expect('-leading'.isSlug, isFalse);
      expect('trailing-'.isSlug, isFalse);
      expect('double--hyphen'.isSlug, isFalse);
      expect('Has Spaces'.isSlug, isFalse);
      expect('UPPER'.isSlug, isFalse);
      expect(''.isSlug, isFalse);
    });
  });
}
