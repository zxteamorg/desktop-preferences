///
/// Define Bluetooth battery level
///
enum BluetoothBatteryLevel {
  ///
  /// Poor level 0% - 20%
  ///
  poorLow,

  ///
  /// Poor level 20% - 40%
  ///
  low,

  ///
  /// Good level 40% - 55%
  ///
  lowAverage,

  ///
  /// Good level 55% - 70%
  ///
  average,

  ///
  /// Hight level 70% - 85%
  ///
  lowHight,

  ///
  /// Hight level 85% - 99%
  ///
  hight,

  ///
  /// Full level - 100%
  ///
  full,
}

///
/// Define Bluetooth type device
///
enum BluetoothHardwareType {
  ///
  /// Device smartphone
  ///
  smartphone,

  ///
  /// Device television
  ///
  television,

  ///
  /// Device headphones
  ///
  headphones,

  ///
  /// Device microphone
  ///
  microphone,

  ///
  /// Device smartwatch
  ///
  smartwatch,

  ///
  /// Device other
  ///
  other,
}

abstract class BluetoothService {
  /// Gets whether Bluetooth adapter is turn ON.
  bool get isEnabled;

  ///
  /// Call this method to disable Bluetooth adapter
  ///
  void disable();

  ///
  /// Call this method to enable Bluetooth adapter
  ///
  void enable();

  ///
  /// Gets list of Bluetooth devices (available on air)
  ///
  List<BluetoothDevice> get devices;
}

abstract class BluetoothDevice {
  /// Name of the Bluetooth device
  String get name;

  /// Type of the Bluetooth device
  BluetoothHardwareType get hardwareType;

  ///
  /// Battery level of the Bluetooth device.
  ///
  /// The `value` is `null` if Battery is not presented on the device.
  ///
  BluetoothBatteryLevel? get batteryLevel;

  ///
  /// Indicates whether the device is connected to current workstation.
  ///
  bool get isConnected;
}
