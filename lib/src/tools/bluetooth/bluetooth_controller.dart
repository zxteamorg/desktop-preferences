import "package:flutter/foundation.dart";

import "bluetooth_service.dart" show BluetoothDevice, BluetoothService;

class BluetoothController extends ChangeNotifier {
  BluetoothController(this._service);

  bool get isEnabled => this._service.isEnabled;

  void disable() {
    this._service.disable();
    this.notifyListeners();
  }

  void enable() {
    this._service.enable();
    this.notifyListeners();
  }

  List<BluetoothDevice> get devices => this._service.devices;

  final BluetoothService _service;
}
