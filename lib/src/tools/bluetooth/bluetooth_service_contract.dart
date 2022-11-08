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
  /// Battery charge level of the Bluetooth device.
  ///
  /// The value in range [0..1] inclusively.
  ///
  /// The `value` is `null` if device does not have Battery capability.
  ///
  /// For example values:
  /// - `0.0` means 0% charge level
  /// - `0.22` means 22% charge level
  /// - `0.7725` means 77.25% charge level
  /// - `1.0` means 100% charge level
  /// - `null` means No Battery at all
  ///
  double? get batteryLevel;

  ///
  /// Indicates whether the device is connected to current workstation.
  ///
  bool get isConnected;
}
