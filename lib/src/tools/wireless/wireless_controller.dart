import "package:flutter/foundation.dart";

import "wireless_service.dart";

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

  PrefferedWirelessNetwork? get connectedNetwork =>
      this._service.connectedNetwork;

  List<WirelessNetwork> get otherNetworks => this._service.otherNetworks;

  List<PrefferedWirelessNetwork> get prefferedNetworks =>
      this._service.prefferedNetworks;

  final WirelessService _service;
}
