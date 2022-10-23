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
}
