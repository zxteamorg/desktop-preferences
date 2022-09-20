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
  /// Gets list of Wireless networks (available on air)
  ///
  List<WirelessNetwork> get networks;
}

abstract class WirelessNetwork {
  ///
  /// Name of the Wireless network
  ///
  String get name;
}

class WirelessServiceStub extends WirelessService {
  @override
  final List<WirelessNetwork> networks;

  @override
  void disable() {
    this.isEnabled = false;
    // this._restartTimer();

    // ignore: avoid_print
    print("Wireless Adapter is OFF");
  }

  @override
  void enable() {
    this.isEnabled = true;
    // this._restartTimer();

    // ignore: avoid_print
    print("Wireless Adapter is ON");
  }

  @override
  bool isEnabled;

  WirelessServiceStub()
      : this.isEnabled = true,
        this.networks = List<WirelessNetwork>.unmodifiable(<WirelessNetwork>[]);
}
