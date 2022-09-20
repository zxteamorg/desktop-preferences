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
        this.devices = List<BluetoothDevice>.unmodifiable(<BluetoothDevice>[]) {
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
