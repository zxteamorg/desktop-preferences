// ignore_for_file: prefer_interpolation_to_compose_strings

import "dart:async" show Future;
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
    // ignore: avoid_print
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
    // See https://pub.dev/documentation/shelf/latest/shelf_io/serve.html
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
    // If GET request return html form.
    if (request.method == "GET") {
      return Response.ok(
        """<!DOCTYPE html>
                       <html>
                       <body>
                          <h1>Desktop Preferences</h1>
                          <form method="post">
                              <label for="display">Select display:</label>
                              <input type="text" id="display" name="display"><br><br>

                              <label for="brightness">Set brightness from 0 to 100:</label>
                              <input type="text" id="brightness" name="brightness"><br><br>

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
      // parsing data POST request extract key/value pairs of information from the query string.
      final String content = await request.readAsString();
      Map<String, String> data = Uri(query: content).queryParameters;

      print(data["brightness"]);
    }
    throw Exception("Incorrect request data");
  }
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
