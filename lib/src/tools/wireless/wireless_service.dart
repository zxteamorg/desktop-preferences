import 'package:flutter/material.dart';

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

  ///
  /// Get signal level
  /// 0 - 0%-25%
  /// 1 - 25%-50%
  /// 2 - 50%-75%
  /// 3 - 75%-100%
  ///
  int get level;

  ///
  ///Add icons isPublic and not isPublic
  ///
  Icon get isPublic;

  const WirelessNetwork._();
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
        this.networks = List<WirelessNetwork>.unmodifiable(
          <WirelessNetwork>[
            const WirelessNetworkStub("wi-fi 0", 2, isPublic),
            const WirelessNetworkStub("wi-fi 1", 0, isPublic),
            const WirelessNetworkStub("wi-fi 2", 1, isPublic),
            const WirelessNetworkStub("wi-fi 3", 3, isPublic),
            const WirelessNetworkStub("wi-fi 4", 3, isPublic),
            const WirelessNetworkStub("wi-fi 5", 2, isPublic)
          ],
        );
}

class WirelessNetworkStub extends WirelessNetwork {
  @override
  final int level;

  @override
  final String name;

  @override
  final Icon isPublic;

  const WirelessNetworkStub(this.name, this.level, this.isPublic) : super._();
}
