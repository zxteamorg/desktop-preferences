import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_localizations/flutter_localizations.dart";

import "package:args/args.dart";
import "package:provider/provider.dart";

import "tools/bluetooth/bluetooth_controller.dart";
import "tools/bluetooth/bluetooth_popup.dart";
import "tools/bluetooth/bluetooth_service.dart";
import "tools/display/display_controller.dart";
import "tools/display/display_popup.dart";
import "tools/display/display_service.dart";
import "tools/wireless/wireless_controller.dart";
import "tools/wireless/wireless_popup.dart";
import "tools/wireless/wireless_service.dart";

enum AppTool {
  // ignore: constant_identifier_names
  BLUETOOTH_POPUP,
  // ignore: constant_identifier_names
  DISPLAY_POPUP,
  // ignore: constant_identifier_names
  WIRELESS_POPUP
}

class AppArguments {
  final AppTool appTool;

  factory AppArguments(List<String> args) {
    final ArgParser argParser = _buildArgParser();
    final ArgResults result = argParser.parse(args);

    final String? appToolStr = result["tool"];
    if (appToolStr == null) {
      throw ArgumentError();
    }

    AppTool appTool;
    switch (appToolStr) {
      case "bluetooth-popup":
        appTool = AppTool.BLUETOOTH_POPUP;
        break;
      case "display-popup":
        appTool = AppTool.DISPLAY_POPUP;
        break;
      case "wireless-popup":
        appTool = AppTool.WIRELESS_POPUP;
        break;
      default:
        throw ArgumentError();
    }

    final AppArguments instance = AppArguments._(appTool);
    return instance;
  }

  static ArgParser _buildArgParser() {
    final ArgParser parser = ArgParser();

    parser.addOption("tool",
        abbr: "t",
        mandatory: true,
        allowed: const <String>[
          "bluetooth-popup",
          "display-popup",
          "wireless-popup"
        ]);

    return parser;
  }

  AppArguments._(this.appTool);
}

/// The Widget that configures your application.
class App extends StatelessWidget {
  const App({
    Key? key,
    required this.appArguments,
  }) : super(key: key);

  final AppArguments appArguments;

  @override
  Widget build(BuildContext context) {
    Widget homeWidget;
    switch (appArguments.appTool) {
      case AppTool.BLUETOOTH_POPUP:
        homeWidget = InheritedProvider<BluetoothController>(
          create: (_) => BluetoothController(BluetoothServiceStub()),
          child: const BluetoothPopup(),
        );
        break;
      case AppTool.DISPLAY_POPUP:
        homeWidget = InheritedProvider<DisplayController>(
          create: (_) => DisplayController(DisplayServiceStub()),
          child: const DisplayPopup(),
        );
        break;
      case AppTool.WIRELESS_POPUP:
        homeWidget = InheritedProvider<WirelessController>(
          create: (_) => WirelessController(WirelessServiceStub()),
          child: const WirelessPopup(),
        );
        break;
    }

    return MaterialApp(
      home: homeWidget,
      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale("en", ""), // English, no country code
      ],

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
