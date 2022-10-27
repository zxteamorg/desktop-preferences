import "bluetooth_service_contract.dart"
    show BluetoothService, BluetoothDevice, BluetoothDeviceNameIcon;
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
            BluetoothDeviceStub("BT1", BluetoothDeviceNameIcon.television),
            BluetoothDeviceStub("BT2", BluetoothDeviceNameIcon.headphones),
            BluetoothDeviceStub("BT3", BluetoothDeviceNameIcon.microphone),
            BluetoothDeviceStub("BT4", BluetoothDeviceNameIcon.smartphone),
            BluetoothDeviceStub("BT5", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT6", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT7", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT8", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT9", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT10", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT11", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT12", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT13", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT14", BluetoothDeviceNameIcon.device),
            BluetoothDeviceStub("BT15", BluetoothDeviceNameIcon.device),
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

  final BluetoothDeviceNameIcon nameIcon;

  const BluetoothDeviceStub(
    this.name,
    this.nameIcon,
  );
}
