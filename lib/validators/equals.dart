/// Check if both Strings are equal.

bool equals(String str, String comparison) => _equals(str, comparison);

extension EqualX on String {
  bool equals(String comparison) {
    return _equals(this, comparison);
  }
}

bool _equals(String str, String comparison) {
  return str == comparison;
}
