import "package:flutter/foundation.dart";

import "display_service_contract.dart";

class DisplayController extends ChangeNotifier {
  DisplayController(this._service);

  // int get brightness => this._service.brightness;

  void setBrightness(int value) {
    // this._service.setBrightness(value);
    this.notifyListeners();
  }

  final DisplayService _service;
}
