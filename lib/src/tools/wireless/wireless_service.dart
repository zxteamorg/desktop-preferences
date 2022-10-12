import "wireless_service_contract.dart";

class WirelessServiceStub extends WirelessService {
  @override
  final PreferredWirelessNetwork? connectedNetwork;

  @override
  final List<PreferredWirelessNetwork> preferredNetworks;

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
        WirelessNetworkStub("wi-fi 5", 2, false),
        WirelessNetworkStub("wi-fi 6", 2, false),
        WirelessNetworkStub("wi-fi 7", 2, false),
        WirelessNetworkStub("wi-fi 8", 2, false),
        WirelessNetworkStub("wi-fi 9", 2, false),
        WirelessNetworkStub("wi-fi 10", 2, false),
        WirelessNetworkStub("wi-fi 11", 2, false),
        WirelessNetworkStub("wi-fi 12", 2, false),
        WirelessNetworkStub("wi-fi 13", 2, false),
        WirelessNetworkStub("wi-fi 14", 2, false),
        WirelessNetworkStub("wi-fi 15", 2, false),
        WirelessNetworkStub("wi-fi 16", 2, false),
        WirelessNetworkStub("wi-fi 17", 2, false),
        WirelessNetworkStub("wi-fi 18", 2, false),
        WirelessNetworkStub("wi-fi 19", 2, false),
        WirelessNetworkStub("wi-fi 20", 2, false),
        WirelessNetworkStub("wi-fi 21", 2, false),
        WirelessNetworkStub("wi-fi 22", 2, false),
        WirelessNetworkStub("wi-fi 23", 2, false),
        WirelessNetworkStub("wi-fi 24", 2, false),
        WirelessNetworkStub("wi-fi 25", 2, false),
        WirelessNetworkStub("wi-fi 26", 2, false),
        WirelessNetworkStub("wi-fi 27", 2, false)
      ],
    );

    final List<PreferredWirelessNetworkStub> preferredNetworks =
        List<PreferredWirelessNetworkStub>.unmodifiable(const <
            PreferredWirelessNetwork>[
      PreferredWirelessNetworkStub("The beauty", 3, false),
      PreferredWirelessNetworkStub("Galaxy", 2, false),
    ]);

    final PreferredWirelessNetwork connectedNetwork = preferredNetworks[1];

    const bool isEnabled = true;

    return WirelessServiceStub._(
      otherNetworks,
      preferredNetworks,
      connectedNetwork,
      isEnabled,
    );
  }

  WirelessServiceStub._(
    this.otherNetworks,
    this.preferredNetworks,
    this.connectedNetwork,
    this.isEnabled,
  );
}

class WirelessNetworkStub implements WirelessNetwork {
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
  );
}

class PreferredWirelessNetworkStub extends WirelessNetworkStub
    implements PreferredWirelessNetwork {
  const PreferredWirelessNetworkStub(
    super.name,
    super.level,
    super.isPublic,
  );
}
