import "package:flutter/foundation.dart";

import "bluetooth_service_contract.dart"
    show BluetoothDevice, BluetoothService, ConnectedBluetoothDevice;

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

  // ConnectedBluetoothDevice? get isConnected => this._service.isConnected;

  List<BluetoothDevice> get devices => this._service.devices;

  final BluetoothService _service;
}
