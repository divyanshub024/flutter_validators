import 'package:flutter_validators/flutter_validators.dart';
import 'package:test/test.dart' hide escape;

void main() {
  group('Escape Sanitizer Tests', () {
    test('escape HTML-unsafe characters', () {
      expect(escape('<script>'), '&lt;script&gt;');
      expect(escape('a & b'), 'a &amp; b');
      expect('"quote"'.escape(), '&quot;quote&quot;');
    });

    test('unescape reverses escape', () {
      expect(unescape('&lt;script&gt;'), '<script>');
      expect(
        unescape(escape('<a href="x">& \'/\'</a>')),
        '<a href="x">& \'/\'</a>',
      );
      expect('&amp;'.unescape(), '&');
    });
  });
}
