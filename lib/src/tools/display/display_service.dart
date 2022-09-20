abstract class DisplayService {
  /// Gets whether Bluetooth adapter is turn ON.
  int get brightness;

  ///
  /// Call this method to enable Bluetooth adapter
  ///
  void setBrightness(int value);
}

class DisplayServiceStub extends DisplayService {
  @override
  int brightness;

  DisplayServiceStub() : this.brightness = 50;

  @override
  void setBrightness(int value) {
    if (value < 0 || value > 100) {
      throw ArgumentError.value(value);
    }

    this.brightness = value;

    // ignore: avoid_print
    print("Set Display Brightness to $value");
  }
}
