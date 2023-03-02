import "package:orgzxteam_desktop_preferences/src/platform/linux/wpa_supplicant_linux.dart";

Future<void> main() async {
  final WirelessDeviceHandleFactory supplicantDeviceFactory =
      WirelessDeviceHandleFactory();

  try {
    print("Connection with WPA Supplicant established.");

    final WirelessDeviceHandle supplicantDevice =
        await supplicantDeviceFactory.create("wlan0");
    try {
      print("Handle to 'wlan0' device was created.");

      print("WiFi networks scanning...");
      await supplicantDevice.scan();
      print("WiFi networks were scanned.");

      final Iterable<WirelessBssHandle> bsses =
          await supplicantDevice.getBSSs();
      for (final WirelessBssHandle bss in bsses) {
        print(await bss.getBSSESID());
        print(await bss.getSSESID());
        print("#########################");
      }
    } finally {
      await supplicantDevice.close();
    }
    print("Handle to 'wlan0' device was closed.");
  } finally {
    await supplicantDeviceFactory.close();
  }
  print("Connection with WPA Supplicant was closed.");
}
