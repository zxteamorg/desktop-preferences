// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object spec.xml

import "package:dbus/dbus.dart";

/// Signal data for fi.w1.wpa_supplicant1.InterfaceAdded.
class OrgFreedesktopDBusIntrospectableInterfaceAdded extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();
  Map<String, DBusValue> get properties => values[1].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableInterfaceAdded(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.InterfaceRemoved.
class OrgFreedesktopDBusIntrospectableInterfaceRemoved extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();

  OrgFreedesktopDBusIntrospectableInterfaceRemoved(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.PropertiesChanged.
class OrgFreedesktopDBusIntrospectablePropertiesChanged extends DBusSignal {
  Map<String, DBusValue> get properties => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectablePropertiesChanged(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

class OrgFreedesktopDBusIntrospectable extends DBusRemoteObject {
  /// Stream of fi.w1.wpa_supplicant1.InterfaceAdded signals.
  late final Stream<OrgFreedesktopDBusIntrospectableInterfaceAdded>
      interfaceAdded;

  /// Stream of fi.w1.wpa_supplicant1.InterfaceRemoved signals.
  late final Stream<OrgFreedesktopDBusIntrospectableInterfaceRemoved>
      interfaceRemoved;

  /// Stream of fi.w1.wpa_supplicant1.PropertiesChanged signals.
  // late final Stream<OrgFreedesktopDBusIntrospectablePropertiesChanged> propertiesChanged;

  OrgFreedesktopDBusIntrospectable(
      DBusClient client, String destination, DBusObjectPath path)
      : super(client, name: destination, path: path) {
    interfaceAdded = DBusRemoteObjectSignalStream(
            object: this,
            interface: "fi.w1.wpa_supplicant1",
            name: "InterfaceAdded",
            signature: DBusSignature("oa{sv}"))
        .asBroadcastStream()
        .map(
            (DBusSignal signal) => OrgFreedesktopDBusIntrospectableInterfaceAdded(signal));

    interfaceRemoved = DBusRemoteObjectSignalStream(
            object: this,
            interface: "fi.w1.wpa_supplicant1",
            name: "InterfaceRemoved",
            signature: DBusSignature("o"))
        .asBroadcastStream()
        .map((DBusSignal signal) =>
            OrgFreedesktopDBusIntrospectableInterfaceRemoved(signal));

    // propertiesChanged = DBusRemoteObjectSignalStream(object: this, interface: 'fi.w1.wpa_supplicant1', name: 'PropertiesChanged', signature: DBusSignature('a{sv}')).asBroadcastStream().map((signal) => OrgFreedesktopDBusIntrospectablePropertiesChanged(signal));
  }

  /// Invokes org.freedesktop.DBus.Introspectable.Introspect()
  Future<String> callIntrospect(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod(
        "org.freedesktop.DBus.Introspectable", "Introspect", [],
        replySignature: DBusSignature("s"),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes org.freedesktop.DBus.Properties.Get()
  Future<DBusValue> callGet(String interface, String propname,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("org.freedesktop.DBus.Properties", "Get",
        [DBusString(interface), DBusString(propname)],
        replySignature: DBusSignature("v"),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asVariant();
  }

  /// Invokes org.freedesktop.DBus.Properties.GetAll()
  Future<Map<String, DBusValue>> callGetAll(String interface,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod(
        "org.freedesktop.DBus.Properties", "GetAll", [DBusString(interface)],
        replySignature: DBusSignature("a{sv}"),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asStringVariantDict();
  }

  /// Invokes org.freedesktop.DBus.Properties.Set()
  Future<void> callSet(String interface, String propname, DBusValue value,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod("org.freedesktop.DBus.Properties", "Set",
        [DBusString(interface), DBusString(propname), DBusVariant(value)],
        replySignature: DBusSignature(""),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Gets fi.w1.wpa_supplicant1.DebugLevel
  Future<String> getDebugLevel() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1", "DebugLevel",
        signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.DebugLevel
  Future<void> setDebugLevel(String value) async {
    await setProperty("fi.w1.wpa_supplicant1", "DebugLevel", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.DebugTimestamp
  Future<bool> getDebugTimestamp() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1", "DebugTimestamp",
        signature: DBusSignature("b"));
    return value.asBoolean();
  }

  /// Sets fi.w1.wpa_supplicant1.DebugTimestamp
  Future<void> setDebugTimestamp(bool value) async {
    await setProperty(
        "fi.w1.wpa_supplicant1", "DebugTimestamp", DBusBoolean(value));
  }

  /// Gets fi.w1.wpa_supplicant1.DebugShowKeys
  Future<bool> getDebugShowKeys() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1", "DebugShowKeys",
        signature: DBusSignature("b"));
    return value.asBoolean();
  }

  /// Sets fi.w1.wpa_supplicant1.DebugShowKeys
  Future<void> setDebugShowKeys(bool value) async {
    await setProperty(
        "fi.w1.wpa_supplicant1", "DebugShowKeys", DBusBoolean(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interfaces
  Future<List<DBusObjectPath>> getInterfaces() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1", "Interfaces",
        signature: DBusSignature("ao"));
    return value.asObjectPathArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.EapMethods
  Future<List<String>> getEapMethods() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1", "EapMethods",
        signature: DBusSignature("as"));
    return value.asStringArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.Capabilities
  Future<List<String>> getCapabilities() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1", "Capabilities",
        signature: DBusSignature("as"));
    return value.asStringArray().toList();
  }

  /// Invokes fi.w1.wpa_supplicant1.CreateInterface()
  Future<DBusObjectPath> callCreateInterface(Map<String, DBusValue> args,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("fi.w1.wpa_supplicant1", "CreateInterface",
        [DBusDict.stringVariant(args)],
        replySignature: DBusSignature("o"),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asObjectPath();
  }

  /// Invokes fi.w1.wpa_supplicant1.RemoveInterface()
  Future<void> callRemoveInterface(String path,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod(
        "fi.w1.wpa_supplicant1", "RemoveInterface", [DBusObjectPath(path)],
        replySignature: DBusSignature(""),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.GetInterface()
  Future<DBusObjectPath> callGetInterface(String ifname,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod(
        "fi.w1.wpa_supplicant1", "GetInterface", [DBusString(ifname)],
        replySignature: DBusSignature("o"),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asObjectPath();
  }

  /// Invokes fi.w1.wpa_supplicant1.ExpectDisconnect()
  Future<void> callExpectDisconnect(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1", "ExpectDisconnect", [],
        replySignature: DBusSignature(""),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }
}
