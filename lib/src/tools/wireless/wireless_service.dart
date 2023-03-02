import "../../platform/linux/wpa_supplicant_linux.dart"
    show WirelessBssHandle, WirelessDeviceHandle, WirelessDeviceHandleFactory;

import "wireless_service_contract.dart";

abstract class WirelessService {
  /// Gets whether Wireless adapter is turn ON.
  bool get isEnabled;

  Future<void> init();

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
        WirelessNetworkStub("wi-fi 0", WirelessLevel.excellent, true),
        WirelessNetworkStub("wi-fi 1", WirelessLevel.poor, true),
        WirelessNetworkStub("wi-fi 2", WirelessLevel.poor, false),
        WirelessNetworkStub("wi-fi 3333333333333333333333333333333", WirelessLevel.excellent, false),
        WirelessNetworkStub("wi-fi 4", WirelessLevel.excellent, true),
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
      PreferredWirelessNetworkStub("Galaxy", WirelessLevel.excellent, false),
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

  @override
  Future<void> init() async {
    await Future<void>.delayed(const Duration(seconds: 1));
  }
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

class WirelessServiceImpl extends WirelessService {
  final String _wirelessDevice;

  List<PreferredWirelessNetwork> _preferredNetworks;
  List<WirelessNetwork> _otherNetworks;

  ///
  /// [wirelessDevice] - name of network adapter, like "wlan0"
  ///
  factory WirelessServiceImpl(final String wirelessDevice) {
    return WirelessServiceImpl._(wirelessDevice);
  }

  WirelessServiceImpl._(this._wirelessDevice)
      : _preferredNetworks = <PreferredWirelessNetwork>[],
        _otherNetworks = <WirelessNetwork>[];

  @override
  Future<void> init() async {
    final WirelessDeviceHandleFactory factory = WirelessDeviceHandleFactory();
    try {
      final WirelessDeviceHandle device =
          await factory.create(this._wirelessDevice);

      try {
        await device.scan();

        final Iterable<WirelessBssHandle> bsses = await device.getBSSs();

        final List<WirelessNetwork> networks = <WirelessNetwork>[];
        for (final WirelessBssHandle bss in bsses) {
          final String macAddress = await bss.getBSSESID();
          final String networkName = await bss.getSSESID();

          networks.add(WirelessNetworkImpl("$networkName  ($macAddress)"));
        }
        this._otherNetworks = networks;
      } finally {
        await device.close();
      }
    } finally {
      await factory.close();
    }
  }

  @override
  PreferredWirelessNetwork? get connectedNetwork => null;

  @override
  void disable() {
    throw Exception("Not implemented yet.");
  }

  @override
  void enable() {
    throw Exception("Not implemented yet.");
  }

  @override
  bool get isEnabled => true;

  @override
  List<WirelessNetwork> get otherNetworks => this._otherNetworks;

  @override
  List<PreferredWirelessNetwork> get preferredNetworks =>
      this._preferredNetworks;
}

class WirelessNetworkImpl implements WirelessNetwork {
  @override
  final String name;

  @override
  final WirelessLevel level = WirelessLevel.good;

  @override
  final bool isPublic = false;

  WirelessNetworkImpl(this.name);
}
