import "package:flutter/foundation.dart";

import "display_service_contract.dart" show DisplayService, DisplayDevice;

class DisplayController extends ChangeNotifier {
  DisplayController(this._service);

  void setBrightness(DisplayDevice display, double brightness) {
    this._service.setBrightness(display, brightness);
    this.notifyListeners();
  }

  void disableDarkMode() {
    this._service.disableDarkMode();
    this.notifyListeners();
  }

  void enableDarkMode() {
    this._service.enableDarkMode();
    this.notifyListeners();
  }

  void disableNightMode() {
    this._service.disableNightMode();
    this.notifyListeners();
  }

  void enableNightMode() {
    this._service.enableNightMode();
    this.notifyListeners();
  }

  List<DisplayDevice> get displays => this._service.displays;

  final DisplayService _service;
}
