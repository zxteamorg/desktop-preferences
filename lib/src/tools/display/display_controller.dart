import "dart:async";
import "package:flutter/foundation.dart";

import "display_service_contract.dart" show DisplayService, DisplayDevice;

class DisplayController extends ChangeNotifier {
  DisplayController(this._service) {
    this._subscriptionBrightness =
        this._service.brightnessChanged.listen(this._onBrightnessChanged);

    this._subscriptionDarkMode =
        this._service.darkModeChanged.listen(this._onDarkModeChanged);

    this._subscriptionNightMode =
        this._service.nightModeChanged.listen(this._onNightModeChanged);
  }

  @override
  void dispose() {
    super.dispose();

    unawaited(this._subscriptionBrightness.cancel());
    unawaited(this._subscriptionDarkMode.cancel());
    unawaited(this._subscriptionNightMode.cancel());
  }

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

  late final StreamSubscription<double> _subscriptionBrightness;
  late final StreamSubscription<bool> _subscriptionDarkMode;
  late final StreamSubscription<bool> _subscriptionNightMode;

  void _onBrightnessChanged(double event) {
    print("_onBrightnessChanged $event");
    this.notifyListeners();
  }


  void _onDarkModeChanged(bool event) {
    print("_onDarkModeChanged $event");
    this.notifyListeners();
  }


  void _onNightModeChanged(bool event) {
    print("_onNightModeChanged $event");
    this.notifyListeners();
  }
}
