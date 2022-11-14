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
  /// Excellent signal 66% - 100%
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
  /// This flag determines whether is a wirelessNetwork public network or security.
  /// A public network is a type of network wherein anyone, namely the general public, 
  /// has access and through it can connect to other networks or the Internet. 
  /// You can connect to a public wirelessNetwork without entering any password 
  ///
  bool get isPublic;
}

abstract class PreferredWirelessNetwork extends WirelessNetwork {}
