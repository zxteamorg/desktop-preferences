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
        WirelessNetworkStub("wi-fi 0", WirelessLevel.nice, true),
        WirelessNetworkStub("wi-fi 1", WirelessLevel.poor, true),
        WirelessNetworkStub("wi-fi 2", WirelessLevel.poor, false),
        WirelessNetworkStub("wi-fi 3", WirelessLevel.nice, false),
        WirelessNetworkStub("wi-fi 4", WirelessLevel.nice, true),
        WirelessNetworkStub("wi-fi 5", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 6", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 7", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 8", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 9", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 10", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 11", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 12", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 13", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 14", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 15", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 16", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 17", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 18", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 19", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 20", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 21", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 22", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 23", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 24", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 25", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 26", WirelessLevel.good, false),
        WirelessNetworkStub("wi-fi 27", WirelessLevel.good, false)
      ],
    );

    final List<PreferredWirelessNetworkStub> preferredNetworks =
        List<PreferredWirelessNetworkStub>.unmodifiable(const <
            PreferredWirelessNetwork>[
      PreferredWirelessNetworkStub("The beauty", WirelessLevel.good, false),
      PreferredWirelessNetworkStub("Galaxy", WirelessLevel.nice, false),
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
  final WirelessLevel level;

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
