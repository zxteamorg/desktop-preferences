import "bluetooth_service_contract.dart"
    show BluetoothService, BluetoothDevice, BluetoothHardwareType;
// import "bluetooth_device_icon.dart" show BluetoothDeviceIcon;

class BluetoothServiceStub extends BluetoothService {
  @override
  final List<BluetoothDevice> devices;

  @override
  void disable() {
    this.isEnabled = false;
    // this._restartTimer();

    // ignore: avoid_print
    print("Bluetooth Adapter is OFF");
  }

  @override
  void enable() {
    this.isEnabled = true;
    // this._restartTimer();

    // ignore: avoid_print
    print("Bluetooth Adapter is ON");
  }

  @override
  bool isEnabled;

  BluetoothServiceStub()
      : this.isEnabled = true,
        // this._timer = null,
        this.devices = List<BluetoothDevice>.unmodifiable(
          const <BluetoothDevice>[
            BluetoothDeviceStub("BT1", BluetoothHardwareType.television),
            BluetoothDeviceStub("BT2", BluetoothHardwareType.headphones),
            BluetoothDeviceStub("BT3", BluetoothHardwareType.microphone),
            BluetoothDeviceStub("BT4", BluetoothHardwareType.smartphone),
            BluetoothDeviceStub("BT5", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT6", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT7", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT8", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT9", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT10", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT11", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT12", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT13", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT14", BluetoothHardwareType.other),
            BluetoothDeviceStub("BT15", BluetoothHardwareType.other),
          ],
        ) {
    // this._restartTimer();
  }

  // Timer? _timer;

  // void _restartTimer() {
  //   {
  //     // local scope
  //     final Timer? currentTimer = this._timer;
  //     if (currentTimer != null) {
  //       currentTimer.cancel();
  //       this._timer = null;
  //     }
  //   }

  //   this._timer = Timer.periodic(
  //     const Duration(seconds: 30),
  //     (Timer t) => this._onTimer(),
  //   );
  // }

  // void _onTimer() {
  //   //
  // }
}

class BluetoothDeviceStub implements BluetoothDevice {
  @override
  final String name;

  @override
  final BluetoothHardwareType deviceType;

  const BluetoothDeviceStub(
    this.name,
    this.deviceType,
  );
}
