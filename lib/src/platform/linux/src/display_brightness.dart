import "dart:io";

class DisplayBrightness {
  // intel_backlight - the name of our monitor
  final String displayBrightness;

  DisplayBrightness(this.displayBrightness);

  Future<int> getMaxBrightness() async {
    final File maxFileBrightness =
        File("/sys/class/backlight/$displayBrightness/max_brightness");
    final bool isFileExists = await maxFileBrightness.exists();
    if (isFileExists == true) {
      final String stringMaxBrightness = maxFileBrightness.readAsStringSync();
      final int maxBrightness = int.parse(stringMaxBrightness);

      return maxBrightness;
    } else {
      throw Exception(
          "File is not possible read. You may have entered the wrong file name or check if the file exists.");
    }
  }

  Future<int> getBrightness() async {
    final File fileBrightness =
        File("/sys/class/backlight/$displayBrightness/brightness");
    final bool isFileExists = await fileBrightness.exists();
    if (isFileExists == true) {
      final String stringBrightness = fileBrightness.readAsStringSync();
      final int brightness = int.parse(stringBrightness);

      return brightness;
    } else {
      throw Exception("File is not possible read. Check if the file exists.");
    }
  }

  Future<void> setBrightness(int brightness) async {
    final ProcessResult result =
        await Process.run("light", ["-r -S", brightness.toString()]);
    final int exitCode = result.exitCode;
    if (exitCode != 0) {
      throw Exception(
          "The program is stop. Make sure program 'light' is installed on your computer");
    }
    final int maxBrightness = await this.getMaxBrightness();
    if (brightness < 0 && brightness > maxBrightness) {
      throw Exception(
          "Incorrectly specified the parameter of the brightness. Try again.");
    }
  }
}
