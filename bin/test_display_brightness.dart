import "package:orgzxteam_desktop_preferences/src/platform/linux/src/display_brightness.dart";

Future<void> main() async {
  final DisplayBrightness brightness = DisplayBrightness("intel_backlight");
  final int max = await brightness.getMaxBrightness();
  print("Max: $max");
  print(await brightness.getBrightness());
  await brightness.setBrightness(1000);
  await Future<void>.delayed(const Duration(seconds: 10));
  await brightness.setBrightness(max);
}
