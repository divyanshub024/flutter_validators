///	Check if a string is base58 encoded.

bool isBase58(String str) => _isBase58(str);

extension Base58X on String {
  bool get isBase58 {
    return _isBase58(this);
  }
}

bool _isBase58(String str) {
  return RegExp(r'^[A-HJ-NP-Za-km-z1-9]*$').hasMatch(str);
}
