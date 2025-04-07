/// Check if a string is base32 encoded.
bool isBase32(String str) => _isBase32(str);

extension Base32X on String {
  bool get isBase32 {
    return _isBase32(this);
  }
}

bool _isBase32(String str) {
  return RegExp(r'^[A-Z2-7]+=*$').hasMatch(str);
}
