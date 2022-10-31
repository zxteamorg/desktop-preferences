///
/// Define Bluetooth battery level
///
enum BluetoothBatteryLevel {
  ///
  /// Poor level 0% - 20%
  ///
  low,

  ///
  /// Good level 50% - 70%
  ///
  average,

  ///
  /// Hight level 70% - 90%
  ///
  hight,

  ///
  /// Full level 90% - 100%
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
  BluetoothHardwareType get deviceType;
}
