// ignore_for_file: prefer_interpolation_to_compose_strings

import "dart:async" show Future, StreamController;
import "dart:io" show InternetAddress, HttpServer;
import "package:shelf/shelf.dart"
    show MiddlewareExtensions, Request, Response, logRequests;
import "display_service_contract.dart" show DisplayService, DisplayDevice;
import "package:shelf/shelf_io.dart" as shelf_io;

class DisplayServiceStub extends DisplayService {
  ///
  /// List of connected displays.
  ///
  @override
  final List<DisplayDevice> displays;

  HttpServer? _server;

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
  void setBrightness(final DisplayDevice display, final double brightness) {
    /// ignore: avoid_print
    print("Brightness is: $brightness");
    if (brightness < 0 || brightness > 1) {
      throw ArgumentError.value(brightness);
    }
    if (display is! _DisplayDevice) {
      throw ArgumentError.value(display, "Wrong display instance");
    }

    display.brightness = brightness;
  }

  ///
  /// Create the list of connected fake displays.
  ///
  DisplayServiceStub()
      : this.isDarkModeEnabled = false,
        this.isNightModeEnabled = false,
        this.displays = List<DisplayDevice>.unmodifiable(
          <DisplayDevice>[
            _DisplayDevice("Display_1", 0.3),
            _DisplayDevice("Display_2", 0.4),
            _DisplayDevice("Display_3", 0.5),
          ],
        ) {
    /// See https://pub.dev/documentation/shelf/latest/shelf_io/serve.html
    shelf_io
        .serve(
      logRequests().addHandler(this._handler),
      InternetAddress.anyIPv4, // Allows external connections
      8080,
    )
        .then(
      (final HttpServer value) {
        this._server = value;
      },
    ).catchError(
      (err) {
        //
        print(err);
      },
    );
  }

  Future<Response> _handler(final Request request) async {
    print(request.method);

    /// If GET request return html form.
    final int listDisplaysLength = this.displays.length;
    String htmlOptionDisplay = '<option value=""></option>';
    int count = 0;
    for (final DisplayDevice display in this.displays) {
      final String displayName = display.name;
      count += 1;
      htmlOptionDisplay =
          '$htmlOptionDisplay<option value="$count">$displayName</option>';
    }

    String? htmlFormGet = """<!DOCTYPE html>
                       <html>
                       <body>
                          <h1>Desktop Preferences</h1>
                          <form method="post">
                              <label for="current brightness">If you want change a brightness please :</label><br><br>
                              <label for="display">1. Select display:</label>
                              <select name="display" required>
                                  $htmlOptionDisplay
                              </select><br><br>
                              <!-- <input type="text" id="display" name="display"><br><br> -->

                              <label for="brightness">2. Set brightness from 0 to 100:</label>
                              <input type="text" id="brightness" name="brightness" required><br><br>

                              <h4>Dark mode</h4>
                                  <label for="darkmode">Set the 0 to disable or 1 to enable dark mode:</label>
                                  <input type="text" id="darkmode" name="darkmode" required><br><br>

                              <h4>Night mode</h4>
                                  <label for="nightmode">Set the 0 to disable or 1 to enable night mode:</label>
                                  <input type="text" id="nightmode" name="nightmode" required><br><br><br>

                              <input type="submit" value="Submit">
                       </body>
                       </html>""";

    if (request.method == "GET") {
      return Response.ok(
        htmlFormGet,
        headers: <String, Object>{
          "Content-Type": "text/html",
          "Cache-Control": "no-cache",
        },
      );
    } else if (request.method == "POST") {
      /// parsing data POST request extract key/value pairs of information from the query string.
      final String content = await request.readAsString();
      final Map<String, String> data = Uri(query: content).queryParameters;
      final String? queryParametersDisplay = data["display"];
      final String? queryParametersBrightness = data["brightness"];
      final String? queryParametersDarkmode = data["darkmode"];
      final String? queryParametersNightmode = data["nightmode"];

      ///
      /// Check queryParameters of display
      ///
      if (queryParametersDisplay == null) {
        return Response.badRequest(
            body: "Display is not selected. Please select the display.");
      }

      final int? displayIndex = int.tryParse(queryParametersDisplay);
      if (displayIndex == null) {
        return Response.badRequest(
            body:
                "Unable to read entered data. Please, set the correct display name.");
      }

      if (displayIndex < 0 || displayIndex > listDisplaysLength) {
        return Response.badRequest(
            body:
                "Display is not in the specified range. Please, set in the correct range.");
      }

      ///
      /// Check queryParameters of brightness
      ///
      if (queryParametersBrightness == null) {
        return Response.badRequest(
            body: "Brightness is not set. Please, set the brightness.");
      }

      final double? queryParametersBrightnessDouble =
          double.tryParse(queryParametersBrightness);
      if (queryParametersBrightnessDouble == null) {
        return Response.badRequest(
            body:
                "Unable to read entered data. Please, set the correct display brightness.");
      }

      if (queryParametersBrightnessDouble < 0 ||
          queryParametersBrightnessDouble > 100) {
        return Response.badRequest(
            body:
                "Brightness is not in the specified range. Please, set in the correct range.");
      }

      ///
      /// Check queryParameters of Darkmode
      ///
      if (queryParametersDarkmode == null) {
        return Response.badRequest(
            body: "Dark mode is not set on this device.");
      }

      final int? queryParametersDarkmodeInt =
          int.tryParse(queryParametersDarkmode);
      if (queryParametersDarkmodeInt == null) {
        return Response.badRequest(
            body:
                "Unable to read entered data. Please, set the number. 0 - off, 1 - on.");
      }

      if (queryParametersDarkmodeInt < 0 || queryParametersDarkmodeInt > 1) {
        return Response.badRequest(
            body: "Please, set the correct Darkmode range. 0 - off, 1 - on.");
      }

      if (queryParametersDarkmodeInt == 0) {
        this.disableDarkMode();
      } else if (queryParametersDarkmodeInt == 1) {
        this.enableDarkMode();
      }

      ///
      /// Check queryParameters of Nightmode
      ///
      if (queryParametersNightmode == null) {
        return Response.badRequest(
            body: "Dark mode is not set on this device.");
      }

      final int? queryParametersNightmodeInt =
          int.tryParse(queryParametersNightmode);
      if (queryParametersNightmodeInt == null) {
        return Response.badRequest(
            body:
                "Unable to read entered data. Please, set the number. 0 - off, 1 - on.");
      }

      if (queryParametersNightmodeInt < 0 || queryParametersNightmodeInt > 1) {
        return Response.badRequest(
            body: "Please, set the correct Darkmode range. 0 - off, 1 - on.");
      }

      if (queryParametersNightmodeInt == 0) {
        this.disableNightMode();
      } else if (queryParametersNightmodeInt == 1) {
        this.enableNightMode();
      }

      ///
      /// On indicate display set brightness.
      ///
      final _DisplayDevice display =
          this.displays[displayIndex] as _DisplayDevice;
      display.brightness = queryParametersBrightnessDouble;
      this
          ._brightnessChangedStreamController
          .add(queryParametersBrightnessDouble);
      return Response.ok(htmlFormGet);
    }

    return Response.badRequest(
        body: "Unknow request method. Send GET or POST request.");
  }

  ///
  /// Create stream controller for brightness changing and getter where the data goes.
  ///
  final StreamController<double> _brightnessChangedStreamController =
      StreamController<double>();
  @override
  Stream<double> get brightnessChanged =>
      _brightnessChangedStreamController.stream;
}

///
/// Properties of the Display device.
///
class _DisplayDevice implements DisplayDevice {
  ///
  /// Name of the Display device
  ///
  @override
  String name;

  ///
  /// Brightness of the Display device
  ///
  @override
  double brightness;

  _DisplayDevice(this.name, this.brightness);
}
