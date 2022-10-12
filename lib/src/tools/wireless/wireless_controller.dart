import "package:flutter/foundation.dart";

import "wireless_service_contract.dart"
    show PreferredWirelessNetwork, WirelessNetwork, WirelessService;

class WirelessController extends ChangeNotifier {
  WirelessController(this._service);

  bool get isEnabled => this._service.isEnabled;

  void disable() {
    this._service.disable();
    this.notifyListeners();
  }

  void enable() {
    this._service.enable();
    this.notifyListeners();
  }

  PreferredWirelessNetwork? get connectedNetwork =>
      this._service.connectedNetwork;

  List<WirelessNetwork> get otherNetworks => this._service.otherNetworks;

  List<PreferredWirelessNetwork> get preferredNetworks =>
      this._service.preferredNetworks;

  final WirelessService _service;
}
