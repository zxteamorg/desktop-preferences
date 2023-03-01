// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object spec.xml

import "package:dbus/dbus.dart";

/// Signal data for fi.w1.wpa_supplicant1.BSS.PropertiesChanged.
class OrgFreedesktopDBusIntrospectablePropertiesChanged extends DBusSignal {
  Map<String, DBusValue> get properties => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectablePropertiesChanged(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

class OrgFreedesktopDBusIntrospectable extends DBusRemoteObject {
  /// Stream of fi.w1.wpa_supplicant1.BSS.PropertiesChanged signals.
  // late final Stream<OrgFreedesktopDBusIntrospectablePropertiesChanged> propertiesChanged;

  OrgFreedesktopDBusIntrospectable(DBusClient client, String destination, DBusObjectPath path) : super(client, name: destination, path: path) {
    // propertiesChanged = DBusRemoteObjectSignalStream(object: this, interface: 'fi.w1.wpa_supplicant1.BSS', name: 'PropertiesChanged', signature: DBusSignature('a{sv}')).asBroadcastStream().map((signal) => DBusPropertiesChangedSignal(signal));
  }

  /// Invokes org.freedesktop.DBus.Introspectable.Introspect()
  Future<String> callIntrospect({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("org.freedesktop.DBus.Introspectable", "Introspect", [], replySignature: DBusSignature("s"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes org.freedesktop.DBus.Properties.Get()
  Future<DBusValue> callGet(String interface, String propname, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("org.freedesktop.DBus.Properties", "Get", [DBusString(interface), DBusString(propname)], replySignature: DBusSignature("v"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asVariant();
  }

  /// Invokes org.freedesktop.DBus.Properties.GetAll()
  Future<Map<String, DBusValue>> callGetAll(String interface, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("org.freedesktop.DBus.Properties", "GetAll", [DBusString(interface)], replySignature: DBusSignature("a{sv}"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asStringVariantDict();
  }

  /// Invokes org.freedesktop.DBus.Properties.Set()
  Future<void> callSet(String interface, String propname, DBusValue value, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("org.freedesktop.DBus.Properties", "Set", [DBusString(interface), DBusString(propname), DBusVariant(value)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.SSID
  Future<List<int>> getSSID() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "SSID", signature: DBusSignature("ay"));
    return value.asByteArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.BSSID
  Future<List<int>> getBSSID() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "BSSID", signature: DBusSignature("ay"));
    return value.asByteArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.Privacy
  Future<bool> getPrivacy() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "Privacy", signature: DBusSignature("b"));
    return value.asBoolean();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.Mode
  Future<String> getMode() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "Mode", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.Signal
  Future<int> getSignal() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "Signal", signature: DBusSignature("n"));
    return value.asInt16();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.Frequency
  Future<int> getFrequency() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "Frequency", signature: DBusSignature("q"));
    return value.asUint16();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.Rates
  Future<List<int>> getRates() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "Rates", signature: DBusSignature("au"));
    return value.asUint32Array().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.WPA
  Future<Map<String, DBusValue>> getWPA() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "WPA", signature: DBusSignature("a{sv}"));
    return value.asStringVariantDict();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.RSN
  Future<Map<String, DBusValue>> getRSN() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "RSN", signature: DBusSignature("a{sv}"));
    return value.asStringVariantDict();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.WPS
  Future<Map<String, DBusValue>> getWPS() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "WPS", signature: DBusSignature("a{sv}"));
    return value.asStringVariantDict();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.IEs
  Future<List<int>> getIEs() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "IEs", signature: DBusSignature("ay"));
    return value.asByteArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.BSS.Age
  Future<int> getAge() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.BSS", "Age", signature: DBusSignature("u"));
    return value.asUint32();
  }
}
