bool isAscii(String str) => _isAscii(str);

extension AsciiX on String {
  bool get isAscii {
    return _isAscii(this);
  }
}

bool _isAscii(String str) {
  return RegExp(r'^[\x00-\x7F]+$').hasMatch(str);
}
