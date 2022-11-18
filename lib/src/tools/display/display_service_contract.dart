abstract class DisplayService {
  ///
  /// Call this method to set brightness for one display.
  ///
  void setBrightness(DisplayDevice display, double brightness);

  ///
  /// Gets whether Display Dark Mode is turn ON.
  ///
  bool get isDarkModeEnabled;

  ///
  /// Call this method to disable Display Dark Mode.
  ///
  void disableDarkMode() {
    this.isDarkModeEnabled = false;
  }

  ///
  /// Call this method to enable Display Dark Mode.
  ///
  void enableDarkMode() {
    this.isDarkModeEnabled = true;
  }

  ///
  /// Gets whether Display Night Mode is turn ON.
  ///
  bool get isNightModeEnabled;

  ///
  /// Call this method to disable Display Night Mode.
  ///
  void disableNightMode() {
    this.isNightModeEnabled = false;
  }

  ///
  /// Call this method to enable Display Night Mode.
  ///
  void enableNightMode() {
    this.isNightModeEnabled = true;
  }

  ///
  /// Gets list of Display devices.
  ///
  List<DisplayDevice> get displays;
}

abstract class DisplayDevice {
  ///
  /// Name of the Display device.
  ///
  String get name;

  ///
  /// brightness of the Display device.
  ///
  double get brightness;
}
