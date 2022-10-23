import "bluetooth_service_contract.dart" show BluetoothService, BluetoothDevice;

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
        this.devices =
            List<BluetoothDevice>.unmodifiable(const <BluetoothDevice>[
          BluetoothDeviceStub("BT1"),
          BluetoothDeviceStub("BT2"),
          BluetoothDeviceStub("BT3"),
          BluetoothDeviceStub("BT4"),
          BluetoothDeviceStub("BT5"),
          BluetoothDeviceStub("BT6"),
          BluetoothDeviceStub("BT7"),
          BluetoothDeviceStub("BT8"),
          BluetoothDeviceStub("BT9"),
          BluetoothDeviceStub("BT10"),
          BluetoothDeviceStub("BT11"),
          BluetoothDeviceStub("BT12"),
          BluetoothDeviceStub("BT13"),
          BluetoothDeviceStub("BT14"),
          BluetoothDeviceStub("BT15"),
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

  const BluetoothDeviceStub(
    this.name,
  );
}
