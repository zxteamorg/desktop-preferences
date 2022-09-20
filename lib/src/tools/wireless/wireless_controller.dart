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

  List<WirelessNetwork> get networks => this._service.networks;

  final WirelessService _service;
}
