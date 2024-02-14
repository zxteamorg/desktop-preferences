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
  void disableDarkMode();

  ///
  /// Call this method to enable Display Dark Mode.
  ///
  void enableDarkMode();

  ///
  /// Gets whether Display Night Mode is turn ON. Nidght mode reduces screen brightness.
  ///
  bool get isNightModeEnabled;

  ///
  /// Call this method to disable Display Night Mode.
  ///
  void disableNightMode();

  ///
  /// Call this method to enable Display Night Mode.
  ///
  void enableNightMode();

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
