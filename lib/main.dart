import "package:flutter/material.dart";

import "src/app.dart";

void main(final List<String> args) async {
  final AppArguments appArgs = AppArguments(args);

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
    App(appArguments: appArgs),
  );
}
