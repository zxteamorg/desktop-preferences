import "bluetooth_service_contract.dart"
    show BluetoothService, BluetoothDevice, BluetoothDeviceName;
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
            BluetoothDeviceStub("BT1", BluetoothDeviceName.television),
            BluetoothDeviceStub("BT2", BluetoothDeviceName.headphones),
            BluetoothDeviceStub("BT3", BluetoothDeviceName.microphone),
            BluetoothDeviceStub("BT4", BluetoothDeviceName.smartphone),
            BluetoothDeviceStub("BT5", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT6", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT7", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT8", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT9", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT10", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT11", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT12", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT13", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT14", BluetoothDeviceName.device),
            BluetoothDeviceStub("BT15", BluetoothDeviceName.device),
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
  final BluetoothDeviceName icon;

  const BluetoothDeviceStub(
    this.name,
    this.icon,
  );
}
