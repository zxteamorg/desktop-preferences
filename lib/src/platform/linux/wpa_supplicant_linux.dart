import "package:dbus/dbus.dart";

import "src/dbus/fi.w1.wpa_supplicant1/spec.dart" as wpa_supplicant1;
import "src/dbus/fi.w1.wpa_supplicant1.Interface/spec.dart"
    as wpa_supplicant1_interface;
import "src/dbus/fi.w1.wpa_supplicant1.BSS/spec.dart" as wpa_supplicant1_bss;

class WirelessDeviceHandleFactory {
  final DBusClient _systemBusClient;
  final wpa_supplicant1.OrgFreedesktopDBusIntrospectable _dbusWpaSupplicant;

  factory WirelessDeviceHandleFactory() {
    final DBusClient systemBusClient = DBusClient.system();

    final wpa_supplicant1.OrgFreedesktopDBusIntrospectable dbusWpaSupplicant =
        wpa_supplicant1.OrgFreedesktopDBusIntrospectable(
      systemBusClient,
      "fi.w1.wpa_supplicant1",
      DBusObjectPath("/fi/w1/wpa_supplicant1"),
    );

    return WirelessDeviceHandleFactory._(systemBusClient, dbusWpaSupplicant);
  }

  WirelessDeviceHandleFactory._(this._systemBusClient, this._dbusWpaSupplicant);

  Future<WirelessDeviceHandle> create(String wirelessDevice) async {
    final DBusValue dbusInterfaceName = DBusString(wirelessDevice);
    final Map<String, DBusValue> args = <String, DBusValue>{
      "Ifname": dbusInterfaceName
    };
    final DBusObjectPath interfaceObjectPath =
        await this._dbusWpaSupplicant.callCreateInterface(args);

    return WirelessDeviceHandle(
        this._systemBusClient, this._dbusWpaSupplicant, interfaceObjectPath);
  }

  Future<void> close() async {
    await this._systemBusClient.close();
  }
}

class WirelessDeviceHandle {
  final wpa_supplicant1.OrgFreedesktopDBusIntrospectable _dbusWpaSupplicant;
  final wpa_supplicant1_interface.OrgFreedesktopDBusIntrospectable
      _dbusWpaSupplicantInterface;
  final DBusObjectPath _interfaceObjectPath;
  final DBusClient _systemBusClient;

  factory WirelessDeviceHandle(
    DBusClient systemBusClient,
    wpa_supplicant1.OrgFreedesktopDBusIntrospectable dbusWpaSupplicant,
    DBusObjectPath interfaceObjectPath,
  ) {
    final wpa_supplicant1_interface.OrgFreedesktopDBusIntrospectable
        dbusWpaSupplicantInterface =
        wpa_supplicant1_interface.OrgFreedesktopDBusIntrospectable(
      systemBusClient,
      "fi.w1.wpa_supplicant1",
      interfaceObjectPath,
    );

    return WirelessDeviceHandle._(
      systemBusClient,
      dbusWpaSupplicant,
      interfaceObjectPath,
      dbusWpaSupplicantInterface,
    );
  }

  WirelessDeviceHandle._(
    this._systemBusClient,
    this._dbusWpaSupplicant,
    this._interfaceObjectPath,
    this._dbusWpaSupplicantInterface,
  );

  Future<void> scan() async {
    final Map<String, DBusValue> args = <String, DBusValue>{
      "Type": DBusString("passive")
    };

    await this._dbusWpaSupplicantInterface.callScan(args);
    await Future<void>.delayed(Duration(seconds: 30));
  }

  Future<Iterable<WirelessBssHandle>> getBSSs() async {
    final List<DBusObjectPath> dbusBssPaths =
        await this._dbusWpaSupplicantInterface.getBSSs();

    return dbusBssPaths.map((DBusObjectPath dbusBssPath) => WirelessBssHandle(
          this._systemBusClient,
          dbusBssPath,
        ));
  }

  Future<void> close() async {
    final String interfaceObjectPath = this._interfaceObjectPath.asString();
    await this._dbusWpaSupplicant.callRemoveInterface(interfaceObjectPath);
  }
}

class WirelessBssHandle {
  final wpa_supplicant1_bss.OrgFreedesktopDBusIntrospectable
      _dbusWpaSupplicantBSS;

  factory WirelessBssHandle(
    DBusClient systemBusClient,
    DBusObjectPath bssPath,
  ) {
    final wpa_supplicant1_bss.OrgFreedesktopDBusIntrospectable
        dbusWpaSupplicantBSS =
        wpa_supplicant1_bss.OrgFreedesktopDBusIntrospectable(
      systemBusClient,
      "fi.w1.wpa_supplicant1",
      bssPath,
    );

    return WirelessBssHandle._(
      dbusWpaSupplicantBSS,
    );
  }

  WirelessBssHandle._(
    this._dbusWpaSupplicantBSS,
  );

  Future<String> getBSSESID() async {
    final List<int> bssId = await this._dbusWpaSupplicantBSS.getBSSID();
    final String macAddress = bssId
        .map((int macAddressPart) =>
            macAddressPart.toRadixString(16).toUpperCase())
        .join(":");

    return macAddress;
  }

  Future<String> getSSESID() async {
    final List<int> ssid = await this._dbusWpaSupplicantBSS.getSSID();

    final String networkName = ssid
        .map((int networkNameInt) => String.fromCharCode(networkNameInt))
        .join("");

    return networkName;
  }

  Future<int> getLevelSignal() async {
    final int levelSignal = await this._dbusWpaSupplicantBSS.getSignal();

    return levelSignal;
  }

  Future<bool> getIsPrivate() async {
    final bool isPrivate = await this._dbusWpaSupplicantBSS.getPrivacy();

    return isPrivate;
  }
}
