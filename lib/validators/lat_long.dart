/// Checks if the string is a valid `latitude,longitude` pair.
///
/// Latitude must be in the range -90 to 90 and longitude in the range
/// -180 to 180. The two values are separated by a comma.
///
/// Example:
/// ```dart
/// isLatLong('40.7128,-74.0060'); // true
/// isLatLong('0,0'); // true
/// isLatLong('91,0'); // false (latitude out of range)
/// ```
bool isLatLong(String str) => _isLatLong(str);

/// Extension providing latitude/longitude validation methods on [String].
extension LatLongX on String {
  /// Checks if the string is a valid `latitude,longitude` pair.
  bool get isLatLong {
    return _isLatLong(this);
  }
}

bool _isLatLong(String str) {
  final parts = str.split(',');
  if (parts.length != 2) return false;
  final lat = double.tryParse(parts[0].trim());
  final long = double.tryParse(parts[1].trim());
  if (lat == null || long == null) return false;
  if (!lat.isFinite || !long.isFinite) return false;
  return lat >= -90 && lat <= 90 && long >= -180 && long <= 180;
}
