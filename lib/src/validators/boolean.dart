///

bool isBoolean(String str) => _isBoolean(str);

extension BooleanX on String {
  bool isBoolean() {
    return _isBoolean(this);
  }
}

bool _isBoolean(String str) {
  return ['True', 'False'].contains(str);
}
