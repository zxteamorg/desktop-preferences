///
/// Define Wireless signal level
///
enum WirelessLevel {
  ///
  /// Poor signal level 0% - 33%
  ///
  poor,

  ///
  /// Good signal level 33% - 66%
  ///
  good,

  ///
  /// Nice signal 66% - 100%
  ///
  excellent,
}

abstract class WirelessNetwork {
  ///
  /// Name of the Wireless network
  ///
  String get name;

  ///
  /// Get signal level
  ///
  WirelessLevel get level;

  ///
  ///Add isPublic or not isPublic
  ///
  bool get isPublic;
}

abstract class PreferredWirelessNetwork extends WirelessNetwork {}
