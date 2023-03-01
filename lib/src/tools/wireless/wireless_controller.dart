import "package:flutter/foundation.dart";

import "wireless_service_contract.dart"
    show PreferredWirelessNetwork, WirelessNetwork;
import "wireless_service.dart" show WirelessService;

class WirelessController extends ChangeNotifier {
  bool _isInitialized;

  WirelessController(this._service) : _isInitialized = false {
    this
        ._service
        .init()
        .whenComplete(this._onInitCompleted)
        .catchError(this._onInitFailure);
  }

  bool get isInitialized => this._isInitialized;

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

  void _onInitCompleted() {
    this._isInitialized = true;
    this.notifyListeners();
  }

  void _onInitFailure(final Object error) {
    this._isInitialized = true;
    this.notifyListeners();
  }

  final WirelessService _service;
}
