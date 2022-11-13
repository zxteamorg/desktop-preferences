import "bluetooth_service_contract.dart"
    show BluetoothDevice, BluetoothHardwareType, BluetoothService;

class BluetoothServiceStub extends BluetoothService {
  @override
  final List<BluetoothDevice> devices;

  static double? batteryLevel;

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
          <BluetoothDevice>[
            const BluetoothDeviceStub(
              "BT1",
              BluetoothHardwareType.television,
              true,
              0.2,
            ),
            const BluetoothDeviceStub(
              "BT2",
              BluetoothHardwareType.headphones,
              false,
              0.6,
            ),
            const BluetoothDeviceStub(
              "BT3",
              BluetoothHardwareType.microphone,
              false,
              0.8,
            ),
            const BluetoothDeviceStub(
              "BT4",
              BluetoothHardwareType.smartphone,
              false,
              0,
            ),
            const BluetoothDeviceStub(
              "BT5",
              BluetoothHardwareType.other,
              false,
              1,
            ),
            const BluetoothDeviceStub(
              "BT6",
              BluetoothHardwareType.other,
              false,
              1,
            ),
            const BluetoothDeviceStub(
              "BT7",
              BluetoothHardwareType.other,
              false,
              1,
            ),
            const BluetoothDeviceStub(
              "BT8",
              BluetoothHardwareType.other,
              false,
              1,
            ),
            const BluetoothDeviceStub(
              "BT9 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            const BluetoothDeviceStub(
              "BT10 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            const BluetoothDeviceStub(
              "BT11 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            const BluetoothDeviceStub(
              "BT12 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            const BluetoothDeviceStub(
              "BT13",
              BluetoothHardwareType.other,
              false,
              1,
            ),
            const BluetoothDeviceStub(
              "BT14",
              BluetoothHardwareType.other,
              false,
              1,
            ),
            const BluetoothDeviceStub(
              "BT15",
              BluetoothHardwareType.other,
              false,
              1,
            ),
          ],
        );
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
//
// }

class BluetoothDeviceStub implements BluetoothDevice {
  @override
  final String name;

  @override
  final BluetoothHardwareType hardwareType;

  @override
  final double? batteryLevel;

  @override
  final bool isConnected;

  const BluetoothDeviceStub(this.name, this.hardwareType, this.isConnected,
      [this.batteryLevel]);
}
