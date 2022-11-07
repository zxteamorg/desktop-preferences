import "bluetooth_service_contract.dart"
    show
        BluetoothBatteryLevel,
        BluetoothDevice,
        BluetoothHardwareType,
        BluetoothService;
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
            BluetoothDeviceStub(
              "BT1",
              BluetoothHardwareType.television,
              true,
              BluetoothBatteryLevel.low,
            ),
            BluetoothDeviceStub(
              "BT2",
              BluetoothHardwareType.headphones,
              false,
              BluetoothBatteryLevel.poorLow,
            ),
            BluetoothDeviceStub(
              "BT3",
              BluetoothHardwareType.microphone,
              false,
              BluetoothBatteryLevel.hight,
            ),
            BluetoothDeviceStub(
              "BT4",
              BluetoothHardwareType.smartphone,
              false,
              BluetoothBatteryLevel.average,
            ),
            BluetoothDeviceStub(
              "BT5",
              BluetoothHardwareType.other,
              false,
              BluetoothBatteryLevel.full,
            ),
            BluetoothDeviceStub(
              "BT6",
              BluetoothHardwareType.other,
              false,
              BluetoothBatteryLevel.lowAverage,
            ),
            BluetoothDeviceStub(
              "BT7",
              BluetoothHardwareType.other,
              false,
              BluetoothBatteryLevel.lowHight,
            ),
            BluetoothDeviceStub(
              "BT8",
              BluetoothHardwareType.other,
              false,
              BluetoothBatteryLevel.low,
            ),
            BluetoothDeviceStub(
              "BT9 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            BluetoothDeviceStub(
              "BT10 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            BluetoothDeviceStub(
              "BT11 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            BluetoothDeviceStub(
              "BT12 no battery",
              BluetoothHardwareType.other,
              false,
            ),
            BluetoothDeviceStub(
              "BT13",
              BluetoothHardwareType.other,
              false,
              BluetoothBatteryLevel.low,
            ),
            BluetoothDeviceStub(
              "BT14",
              BluetoothHardwareType.other,
              false,
              BluetoothBatteryLevel.low,
            ),
            BluetoothDeviceStub(
              "BT15",
              BluetoothHardwareType.other,
              false,
              BluetoothBatteryLevel.low,
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
//   //
// }

class BluetoothDeviceStub implements BluetoothDevice {
  @override
  final String name;

  @override
  final BluetoothHardwareType hardwareType;

  @override
  final BluetoothBatteryLevel? batteryLevel;

  @override
  final bool isConnected;

  const BluetoothDeviceStub(this.name, this.hardwareType, this.isConnected,
      [this.batteryLevel]);
}
