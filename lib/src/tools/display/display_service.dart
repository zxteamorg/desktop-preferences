import "display_service_contract.dart" show DisplayService, DisplayDevice;

class DisplayServiceStub extends DisplayService {
  ///
  /// List of connected displays.
  ///
  @override
  final List<DisplayDevice> displays;

  ///
  /// On/Off Dark Mode Display.
  ///
  @override
  bool isDarkModeEnabled;

  @override
  void disableDarkMode() {
    this.isDarkModeEnabled = false;
  }

  @override
  void enableDarkMode() {
    this.isDarkModeEnabled = true;
  }

  ///
  /// On/Off Night Mode Display.
  ///
  @override
  bool isNightModeEnabled;

  @override
  void disableNightMode() {
    this.isNightModeEnabled = false;
  }

  @override
  void enableNightMode() {
    this.isNightModeEnabled = true;
  }

  ///
  /// Call this method to set the brightness display.
  ///
  @override
  void setBrightness(DisplayDevice display, double brightness) {
    if (brightness < 0 || brightness > 100) {
      throw ArgumentError.value(brightness);
    }
  }

  ///
  /// Create the list of connected fake displays.
  ///
  DisplayServiceStub()
      : this.isDarkModeEnabled = false,
        this.isNightModeEnabled = false,
        this.displays = List<DisplayDevice>.unmodifiable(
          <DisplayDevice>[
            const DisplayDeviceStub("Display_1", 30),
            const DisplayDeviceStub("Display_2", 40),
            const DisplayDeviceStub("Display_3", 50),
          ],
        );
}

///
/// Properties of the Display device.
///
class DisplayDeviceStub implements DisplayDevice {
  ///
  /// Name of the Display device
  ///
  @override
  final String name;

  ///
  /// Brightness of the Display device
  ///
  @override
  final double brightness;

  const DisplayDeviceStub(this.name, this.brightness);
}
