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
  PrefferedWirelessNetwork? get connectedNetwork;

  ///
  /// Gets list of Preffereed Wireless networks (available on air + connected in past)
  ///
  List<PrefferedWirelessNetwork> get prefferedNetworks;

  ///
  /// Gets list of Other Wireless networks (available on air)
  ///
  List<WirelessNetwork> get otherNetworks;
}

abstract class WirelessNetwork {
  ///
  /// Name of the Wireless network
  ///
  String get name;

  ///
  /// Get signal level:
  /// * 0 - 0%-25%
  /// * 1 - 25%-50%
  /// * 2 - 50%-75%
  /// * 3 - 75%-100%
  ///
  int get level;

  ///
  ///Add isPublic or not isPublic
  ///
  bool get isPublic;

  const WirelessNetwork._();
}

abstract class PrefferedWirelessNetwork extends WirelessNetwork {
  const PrefferedWirelessNetwork._() : super._();
}

class WirelessServiceStub extends WirelessService {
  @override
  final PrefferedWirelessNetwork? connectedNetwork;

  @override
  final List<PrefferedWirelessNetwork> prefferedNetworks;

  @override
  final List<WirelessNetwork> otherNetworks;

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
  // bool isPublic;

  factory WirelessServiceStub() {
    final List<WirelessNetwork> otherNetworks =
        List<WirelessNetwork>.unmodifiable(
      const <WirelessNetwork>[
        WirelessNetworkStub("wi-fi 0", 2, true),
        WirelessNetworkStub("wi-fi 1", 0, true),
        WirelessNetworkStub("wi-fi 2", 1, false),
        WirelessNetworkStub("wi-fi 3", 3, false),
        WirelessNetworkStub("wi-fi 4", 3, true),
        WirelessNetworkStub("wi-fi 5", 2, false)
      ],
    );

    final List<PrefferedWirelessNetworkStub> prefferedNetworks =
        List<PrefferedWirelessNetworkStub>.unmodifiable(const <
            PrefferedWirelessNetwork>[
      PrefferedWirelessNetworkStub("The beauty", 3, false),
      PrefferedWirelessNetworkStub("Galaxy", 2, false),
    ]);

    final PrefferedWirelessNetwork connectedNetwork = prefferedNetworks[1];

    const bool isEnabled = true;

    return WirelessServiceStub._(
      otherNetworks,
      prefferedNetworks,
      connectedNetwork,
      isEnabled,
    );
  }

  WirelessServiceStub._(
    this.otherNetworks,
    this.prefferedNetworks,
    this.connectedNetwork,
    this.isEnabled,
  );
}

class WirelessNetworkStub extends WirelessNetwork {
  @override
  final int level;

  @override
  final String name;

  @override
  final bool isPublic;

  const WirelessNetworkStub(
    this.name,
    this.level,
    this.isPublic,
  ) : super._();
}

class PrefferedWirelessNetworkStub extends WirelessNetworkStub
    implements PrefferedWirelessNetwork {
  const PrefferedWirelessNetworkStub(
    super.name,
    super.level,
    super.isPublic,
  );
}
