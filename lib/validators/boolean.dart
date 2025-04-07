/// Check if String is a boolean.

bool isBoolean(String str) => _isBoolean(str);

extension BooleanX on String {
  bool get isBoolean {
    return _isBoolean(this);
  }
}

bool _isBoolean(String str) {
  return ['true', 'false', '1', '0'].contains(str);
}
