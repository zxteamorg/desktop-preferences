abstract class WirelessService {
  /// Gets whether Wireless adapter is turn ON.
  bool get isEnabled;

  ///
  /// Call this method to disable Wireless adapter
  ///
  void disable();

  ///
  /// Call this method to enable Wireless adapter
  ///
  void enable();

  ///
  /// Get current connected network (or null if not connected)
  ///
  PreferredWirelessNetwork? get connectedNetwork;

  ///
  /// Gets list of Preferred Wireless networks (available on air + connected in past)
  ///
  List<PreferredWirelessNetwork> get preferredNetworks;

  ///
  /// Gets list of Other Wireless networks (available on air)
  ///
  List<WirelessNetwork> get otherNetworks;
}

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
  nice,

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
