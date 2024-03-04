// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

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
      (dynamic err) {
        print(err);
      },
    );
  }

  final String htmlFormResponse =
  '''<!DOCTYPE html>
          <html>
          <body>
            <h1>Desktop Preferences</h1>
            <form method="post">
              <label for="current brightness">Thanks for using our application ...</label><br><br>
              <div class="loader"></div>
              <meta http-equiv="Refresh" content="7; URL=/">
            </form>
          </body>
          </html>''';
  final Map<String, Object> headers = <String, Object>{
    "Content-Type": "text/html",
    "Cache-Control": "no-cache",
  };

  ///
  /// Server request handler
  ///
  Future<Response> _handler(final Request request) async {
    print(request.method);

    /// If GET request return generated html for displays forms.
    String htmlGetForm = '<div value=""></div>';
    for (final DisplayDevice display in this.displays) {
      final String displayName = display.name;
      final double displayBrightness = display.brightness;
      htmlGetForm =
          '''$htmlGetForm <form method="post" action="monitor">
                              <dl>
                              <dt>$displayName
                              <input type="text" id="brightness" name="brightness" value="$displayBrightness"><br>
                              <input type="submit" value="Submit"><br><br><br>
                              </dt>
                              </dl>
                          </form>''';
    }

    if (request.method == "GET") {
      return Response.ok(
        """<!DOCTYPE html>
                <html>
                <body>
                  <h1>Desktop Preferences</h1>
                      $htmlGetForm

                  <form method="post" action="night">
                      <label for="nightmode">Set Night Mode:</label>
                      <input type="checkbox" id="nightmode" name="nightmode" value="on"/><br>
                      <input type="submit" value="Submit"><br><br><br><br>
                  </form>

                  <form method="post" action="dark">
                      <label for="darkmode">Set Dark Mode:</label>
                      <input type="checkbox" id="darkmode" name="darkmode" value="on"/><br>
                      <input type="submit" value="Submit">
                  </form>
                </body>
                </html>""",
        headers: <String, Object>{
          "Content-Type": "text/html",
          "Cache-Control": "no-cache",
        },
      );
    } else if (request.method == "POST") {
      /// parsing data POST request extract key/value pairs of information from the query string.
      final String content = await request.readAsString();
      final Map<String, String> data = Uri(query: content).queryParameters;

      if (request.handlerPath == "/monitor") {
        return this._handlerBrightness(data["display"], data["brightness"]);
      } else if (request.handlerPath == "/dark") {
        return this._handlerDarkMode(data["darkmode"]);
      } else if (request.handlerPath == "/night") {
        return this._handlerNightMode(data["nightmode"]);
      } else {
        return Response.badRequest(body: "Bad request from _handler");
      }
    }

    return Response.badRequest(
        body: "Unknow request method. Send GET or POST request.");
  }

  ///
  /// Create function _handlerBrightness for check queryParameters of brightness
  ///
  Response _handlerBrightness(
    final String? queryParametersDisplay,
    final String? queryParametersBrightness,
  ) {
    if (queryParametersDisplay == null) {
      return Response.badRequest(
          body: "Display is not selected. Please select the display.");
    }

    if (queryParametersBrightness == null) {
      return Response.badRequest(
          body: "Brightness is out. Please, set up the brightness.");
    }

    final int? displayIndex = int.tryParse(queryParametersDisplay);
    if (displayIndex == null) {
      return Response.badRequest(
          body:
              "Unable to read entered data. Please, set the correct display name.");
    }

    final double? queryParametersBrightnessDouble =
        double.tryParse(queryParametersBrightness);
    if (queryParametersBrightnessDouble == null) {
      return Response.badRequest(
          body:
              "Unable to read entered data. Please, set the correct display brightness.");
    }

    if (displayIndex < 0 || displayIndex > this.displays.length) {
      return Response.badRequest(
          body:
              "Display is not in the specified range. Please, set in the correct range.");
    }

    if (queryParametersBrightnessDouble < 0 ||
        queryParametersBrightnessDouble > 100) {
      return Response.badRequest(
          body:
              "Brightness is not in the specified range. Please, set in the correct range.");
    }

    final _DisplayDevice display =
        this.displays[displayIndex] as _DisplayDevice;
    display.brightness = queryParametersBrightnessDouble;

    this
        ._brightnessChangedStreamController
        .add(queryParametersBrightnessDouble);

    return Response.ok(
      htmlFormResponse,
      headers: headers,
    );
  }

  ///
  /// Create stream controller for brightness changing and getter where the data goes.
  ///
  final StreamController<double> _brightnessChangedStreamController =
      StreamController<double>();
  @override
  Stream<double> get brightnessChanged =>
      _brightnessChangedStreamController.stream;

  ///
  /// Create function _handlerNightMode for check queryParameters of Night mode
  ///
  Response _handlerNightMode(
    final String? queryParametersNightMode,
  ) {
    if (queryParametersNightMode == "on") {
      this.isNightModeEnabled = true;
    } else if (queryParametersNightMode == null) {
      this.isNightModeEnabled = false;
    }
    this._nightModeChangedStreamController.add(this.isNightModeEnabled);
    return Response.ok(
      htmlFormResponse,
      headers: headers,
    );
  }

  ///
  /// Create stream controller for Nightmode changing and getter where the data goes.
  ///
  final StreamController<bool> _nightModeChangedStreamController =
      StreamController<bool>();
  @override
  Stream<bool> get nightModeChanged => _nightModeChangedStreamController.stream;

  ///
  /// Create function _handlerDarkMode for check queryParameters of Dark mode
  ///
  Response _handlerDarkMode(
    final String? queryParametersDarkMode,
  ) {
    if (queryParametersDarkMode == "on") {
      this.isDarkModeEnabled = true;
    } else if (queryParametersDarkMode == null) {
      this.isDarkModeEnabled = false;
    }
    this._darkModeChangedStreamController.add(this.isDarkModeEnabled);
    return Response.ok(
      htmlFormResponse,
      headers: headers,
    );
  }

  ///
  /// Create stream controller for Darkmode changing and getter where the data goes.
  ///
  final StreamController<bool> _darkModeChangedStreamController =
      StreamController<bool>();
  @override
  Stream<bool> get darkModeChanged => _darkModeChangedStreamController.stream;
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
