// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object spec.xml

import "package:dbus/dbus.dart";

/// Signal data for fi.w1.wpa_supplicant1.Interface.ScanDone.
class OrgFreedesktopDBusIntrospectableScanDone extends DBusSignal {
  bool get success => values[0].asBoolean();

  OrgFreedesktopDBusIntrospectableScanDone(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.BSSAdded.
class OrgFreedesktopDBusIntrospectableBSSAdded extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();
  Map<String, DBusValue> get properties => values[1].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableBSSAdded(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.BSSRemoved.
class OrgFreedesktopDBusIntrospectableBSSRemoved extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();

  OrgFreedesktopDBusIntrospectableBSSRemoved(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.BlobAdded.
class OrgFreedesktopDBusIntrospectableBlobAdded extends DBusSignal {
  String get name_ => values[0].asString();

  OrgFreedesktopDBusIntrospectableBlobAdded(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.BlobRemoved.
class OrgFreedesktopDBusIntrospectableBlobRemoved extends DBusSignal {
  String get name_ => values[0].asString();

  OrgFreedesktopDBusIntrospectableBlobRemoved(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.NetworkAdded.
class OrgFreedesktopDBusIntrospectableNetworkAdded extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();
  Map<String, DBusValue> get properties => values[1].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableNetworkAdded(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.NetworkRemoved.
class OrgFreedesktopDBusIntrospectableNetworkRemoved extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();

  OrgFreedesktopDBusIntrospectableNetworkRemoved(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.NetworkSelected.
class OrgFreedesktopDBusIntrospectableNetworkSelected extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();

  OrgFreedesktopDBusIntrospectableNetworkSelected(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.PropertiesChanged.
class OrgFreedesktopDBusIntrospectablePropertiesChanged extends DBusSignal {
  Map<String, DBusValue> get properties => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectablePropertiesChanged(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.ProbeRequest.
class OrgFreedesktopDBusIntrospectableProbeRequest extends DBusSignal {
  Map<String, DBusValue> get args => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableProbeRequest(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.Certification.
class OrgFreedesktopDBusIntrospectableCertification extends DBusSignal {
  Map<String, DBusValue> get certification => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableCertification(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.EAP.
class OrgFreedesktopDBusIntrospectableEAP extends DBusSignal {
  String get status => values[0].asString();
  String get parameter => values[1].asString();

  OrgFreedesktopDBusIntrospectableEAP(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.StaAuthorized.
class OrgFreedesktopDBusIntrospectableStaAuthorized extends DBusSignal {
  String get name_ => values[0].asString();

  OrgFreedesktopDBusIntrospectableStaAuthorized(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.StaDeauthorized.
class OrgFreedesktopDBusIntrospectableStaDeauthorized extends DBusSignal {
  String get name_ => values[0].asString();

  OrgFreedesktopDBusIntrospectableStaDeauthorized(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.StationAdded.
class OrgFreedesktopDBusIntrospectableStationAdded extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();
  Map<String, DBusValue> get properties => values[1].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableStationAdded(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.StationRemoved.
class OrgFreedesktopDBusIntrospectableStationRemoved extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();

  OrgFreedesktopDBusIntrospectableStationRemoved(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.NetworkRequest.
class OrgFreedesktopDBusIntrospectableNetworkRequest extends DBusSignal {
  DBusObjectPath get path_ => values[0].asObjectPath();
  String get field => values[1].asString();
  String get text => values[2].asString();

  OrgFreedesktopDBusIntrospectableNetworkRequest(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.InterworkingAPAdded.
class OrgFreedesktopDBusIntrospectableInterworkingAPAdded extends DBusSignal {
  DBusObjectPath get bss => values[0].asObjectPath();
  DBusObjectPath get cred => values[1].asObjectPath();
  Map<String, DBusValue> get properties => values[2].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableInterworkingAPAdded(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.InterworkingSelectDone.
class OrgFreedesktopDBusIntrospectableInterworkingSelectDone extends DBusSignal {
  OrgFreedesktopDBusIntrospectableInterworkingSelectDone(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.Mesh.MeshGroupStarted.
class OrgFreedesktopDBusIntrospectableMeshGroupStarted extends DBusSignal {
  Map<String, DBusValue> get args => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableMeshGroupStarted(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.Mesh.MeshGroupRemoved.
class OrgFreedesktopDBusIntrospectableMeshGroupRemoved extends DBusSignal {
  Map<String, DBusValue> get args => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableMeshGroupRemoved(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.Mesh.MeshPeerConnected.
class OrgFreedesktopDBusIntrospectableMeshPeerConnected extends DBusSignal {
  Map<String, DBusValue> get args => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableMeshPeerConnected(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

/// Signal data for fi.w1.wpa_supplicant1.Interface.Mesh.MeshPeerDisconnected.
class OrgFreedesktopDBusIntrospectableMeshPeerDisconnected extends DBusSignal {
  Map<String, DBusValue> get args => values[0].asStringVariantDict();

  OrgFreedesktopDBusIntrospectableMeshPeerDisconnected(DBusSignal signal) : super(sender: signal.sender, path: signal.path, interface: signal.interface, name: signal.name, values: signal.values);
}

class OrgFreedesktopDBusIntrospectable extends DBusRemoteObject {
  /// Stream of fi.w1.wpa_supplicant1.Interface.ScanDone signals.
  late final Stream<OrgFreedesktopDBusIntrospectableScanDone> scanDone;

  /// Stream of fi.w1.wpa_supplicant1.Interface.BSSAdded signals.
  late final Stream<OrgFreedesktopDBusIntrospectableBSSAdded> bSSAdded;

  /// Stream of fi.w1.wpa_supplicant1.Interface.BSSRemoved signals.
  late final Stream<OrgFreedesktopDBusIntrospectableBSSRemoved> bSSRemoved;

  /// Stream of fi.w1.wpa_supplicant1.Interface.BlobAdded signals.
  late final Stream<OrgFreedesktopDBusIntrospectableBlobAdded> blobAdded;

  /// Stream of fi.w1.wpa_supplicant1.Interface.BlobRemoved signals.
  late final Stream<OrgFreedesktopDBusIntrospectableBlobRemoved> blobRemoved;

  /// Stream of fi.w1.wpa_supplicant1.Interface.NetworkAdded signals.
  late final Stream<OrgFreedesktopDBusIntrospectableNetworkAdded> networkAdded;

  /// Stream of fi.w1.wpa_supplicant1.Interface.NetworkRemoved signals.
  late final Stream<OrgFreedesktopDBusIntrospectableNetworkRemoved> networkRemoved;

  /// Stream of fi.w1.wpa_supplicant1.Interface.NetworkSelected signals.
  late final Stream<OrgFreedesktopDBusIntrospectableNetworkSelected> networkSelected;

  /// Stream of fi.w1.wpa_supplicant1.Interface.PropertiesChanged signals.
  // late final Stream<OrgFreedesktopDBusIntrospectablePropertiesChanged> propertiesChanged;

  /// Stream of fi.w1.wpa_supplicant1.Interface.ProbeRequest signals.
  late final Stream<OrgFreedesktopDBusIntrospectableProbeRequest> probeRequest;

  /// Stream of fi.w1.wpa_supplicant1.Interface.Certification signals.
  late final Stream<OrgFreedesktopDBusIntrospectableCertification> certification;

  /// Stream of fi.w1.wpa_supplicant1.Interface.EAP signals.
  late final Stream<OrgFreedesktopDBusIntrospectableEAP> eAP;

  /// Stream of fi.w1.wpa_supplicant1.Interface.StaAuthorized signals.
  late final Stream<OrgFreedesktopDBusIntrospectableStaAuthorized> staAuthorized;

  /// Stream of fi.w1.wpa_supplicant1.Interface.StaDeauthorized signals.
  late final Stream<OrgFreedesktopDBusIntrospectableStaDeauthorized> staDeauthorized;

  /// Stream of fi.w1.wpa_supplicant1.Interface.StationAdded signals.
  late final Stream<OrgFreedesktopDBusIntrospectableStationAdded> stationAdded;

  /// Stream of fi.w1.wpa_supplicant1.Interface.StationRemoved signals.
  late final Stream<OrgFreedesktopDBusIntrospectableStationRemoved> stationRemoved;

  /// Stream of fi.w1.wpa_supplicant1.Interface.NetworkRequest signals.
  late final Stream<OrgFreedesktopDBusIntrospectableNetworkRequest> networkRequest;

  /// Stream of fi.w1.wpa_supplicant1.Interface.InterworkingAPAdded signals.
  late final Stream<OrgFreedesktopDBusIntrospectableInterworkingAPAdded> interworkingAPAdded;

  /// Stream of fi.w1.wpa_supplicant1.Interface.InterworkingSelectDone signals.
  late final Stream<OrgFreedesktopDBusIntrospectableInterworkingSelectDone> interworkingSelectDone;

  /// Stream of fi.w1.wpa_supplicant1.Interface.Mesh.MeshGroupStarted signals.
  late final Stream<OrgFreedesktopDBusIntrospectableMeshGroupStarted> meshGroupStarted;

  /// Stream of fi.w1.wpa_supplicant1.Interface.Mesh.MeshGroupRemoved signals.
  late final Stream<OrgFreedesktopDBusIntrospectableMeshGroupRemoved> meshGroupRemoved;

  /// Stream of fi.w1.wpa_supplicant1.Interface.Mesh.MeshPeerConnected signals.
  late final Stream<OrgFreedesktopDBusIntrospectableMeshPeerConnected> meshPeerConnected;

  /// Stream of fi.w1.wpa_supplicant1.Interface.Mesh.MeshPeerDisconnected signals.
  late final Stream<OrgFreedesktopDBusIntrospectableMeshPeerDisconnected> meshPeerDisconnected;

  OrgFreedesktopDBusIntrospectable(DBusClient client, String destination, DBusObjectPath path) : super(client, name: destination, path: path) {
    scanDone = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "ScanDone", signature: DBusSignature("b")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableScanDone(signal));

    bSSAdded = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "BSSAdded", signature: DBusSignature("oa{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableBSSAdded(signal));

    bSSRemoved = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "BSSRemoved", signature: DBusSignature("o")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableBSSRemoved(signal));

    blobAdded = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "BlobAdded", signature: DBusSignature("s")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableBlobAdded(signal));

    blobRemoved = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "BlobRemoved", signature: DBusSignature("s")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableBlobRemoved(signal));

    networkAdded = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "NetworkAdded", signature: DBusSignature("oa{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableNetworkAdded(signal));

    networkRemoved = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "NetworkRemoved", signature: DBusSignature("o")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableNetworkRemoved(signal));

    networkSelected = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "NetworkSelected", signature: DBusSignature("o")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableNetworkSelected(signal));

    // propertiesChanged = DBusRemoteObjectSignalStream(object: this, interface: 'fi.w1.wpa_supplicant1.Interface', name: 'PropertiesChanged', signature: DBusSignature('a{sv}')).asBroadcastStream().map((signal) => OrgFreedesktopDBusIntrospectablePropertiesChanged(signal));

    probeRequest = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "ProbeRequest", signature: DBusSignature("a{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableProbeRequest(signal));

    certification = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "Certification", signature: DBusSignature("a{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableCertification(signal));

    eAP = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "EAP", signature: DBusSignature("ss")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableEAP(signal));

    staAuthorized = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "StaAuthorized", signature: DBusSignature("s")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableStaAuthorized(signal));

    staDeauthorized = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "StaDeauthorized", signature: DBusSignature("s")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableStaDeauthorized(signal));

    stationAdded = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "StationAdded", signature: DBusSignature("oa{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableStationAdded(signal));

    stationRemoved = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "StationRemoved", signature: DBusSignature("o")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableStationRemoved(signal));

    networkRequest = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "NetworkRequest", signature: DBusSignature("oss")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableNetworkRequest(signal));

    interworkingAPAdded = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "InterworkingAPAdded", signature: DBusSignature("ooa{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableInterworkingAPAdded(signal));

    interworkingSelectDone = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface", name: "InterworkingSelectDone", signature: DBusSignature("")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableInterworkingSelectDone(signal));

    meshGroupStarted = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface.Mesh", name: "MeshGroupStarted", signature: DBusSignature("a{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableMeshGroupStarted(signal));

    meshGroupRemoved = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface.Mesh", name: "MeshGroupRemoved", signature: DBusSignature("a{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableMeshGroupRemoved(signal));

    meshPeerConnected = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface.Mesh", name: "MeshPeerConnected", signature: DBusSignature("a{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableMeshPeerConnected(signal));

    meshPeerDisconnected = DBusRemoteObjectSignalStream(object: this, interface: "fi.w1.wpa_supplicant1.Interface.Mesh", name: "MeshPeerDisconnected", signature: DBusSignature("a{sv}")).asBroadcastStream().map((DBusSignal signal) => OrgFreedesktopDBusIntrospectableMeshPeerDisconnected(signal));
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

  /// Gets fi.w1.wpa_supplicant1.Interface.Capabilities
  Future<Map<String, DBusValue>> getCapabilities() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Capabilities", signature: DBusSignature("a{sv}"));
    return value.asStringVariantDict();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.State
  Future<String> getState() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "State", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Scanning
  Future<bool> getScanning() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Scanning", signature: DBusSignature("b"));
    return value.asBoolean();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ApScan
  Future<int> getApScan() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ApScan", signature: DBusSignature("u"));
    return value.asUint32();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ApScan
  Future<void> setApScan (int value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ApScan", DBusUint32(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.BSSExpireAge
  Future<int> getBSSExpireAge() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "BSSExpireAge", signature: DBusSignature("u"));
    return value.asUint32();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.BSSExpireAge
  Future<void> setBSSExpireAge (int value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "BSSExpireAge", DBusUint32(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.BSSExpireCount
  Future<int> getBSSExpireCount() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "BSSExpireCount", signature: DBusSignature("u"));
    return value.asUint32();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.BSSExpireCount
  Future<void> setBSSExpireCount (int value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "BSSExpireCount", DBusUint32(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Country
  Future<String> getCountry() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Country", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Country
  Future<void> setCountry (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Country", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Ifname
  Future<String> getIfname() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Ifname", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Driver
  Future<String> getDriver() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Driver", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.BridgeIfname
  Future<String> getBridgeIfname() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "BridgeIfname", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.BridgeIfname
  Future<void> setBridgeIfname (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "BridgeIfname", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ConfigFile
  Future<String> getConfigFile() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ConfigFile", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.CurrentBSS
  Future<DBusObjectPath> getCurrentBSS() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "CurrentBSS", signature: DBusSignature("o"));
    return value.asObjectPath();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.CurrentNetwork
  Future<DBusObjectPath> getCurrentNetwork() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "CurrentNetwork", signature: DBusSignature("o"));
    return value.asObjectPath();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.CurrentAuthMode
  Future<String> getCurrentAuthMode() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "CurrentAuthMode", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Blobs
  Future<Map<String, List<int>>> getBlobs() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Blobs", signature: DBusSignature("a{say}"));
    return value.asDict().map((DBusValue key, DBusValue value) => MapEntry(key.asString(), value.asByteArray().toList()));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.BSSs
  Future<List<DBusObjectPath>> getBSSs() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "BSSs", signature: DBusSignature("ao"));
    return value.asObjectPathArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Networks
  Future<List<DBusObjectPath>> getNetworks() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Networks", signature: DBusSignature("ao"));
    return value.asObjectPathArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FastReauth
  Future<bool> getFastReauth() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FastReauth", signature: DBusSignature("b"));
    return value.asBoolean();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FastReauth
  Future<void> setFastReauth (bool value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FastReauth", DBusBoolean(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ScanInterval
  Future<int> getScanInterval() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ScanInterval", signature: DBusSignature("i"));
    return value.asInt32();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ScanInterval
  Future<void> setScanInterval (int value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ScanInterval", DBusInt32(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.PKCS11EnginePath
  Future<String> getPKCS11EnginePath() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "PKCS11EnginePath", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.PKCS11ModulePath
  Future<String> getPKCS11ModulePath() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "PKCS11ModulePath", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DisconnectReason
  Future<int> getDisconnectReason() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DisconnectReason", signature: DBusSignature("i"));
    return value.asInt32();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.AuthStatusCode
  Future<int> getAuthStatusCode() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "AuthStatusCode", signature: DBusSignature("i"));
    return value.asInt32();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.AssocStatusCode
  Future<int> getAssocStatusCode() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "AssocStatusCode", signature: DBusSignature("i"));
    return value.asInt32();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.RoamTime
  Future<int> getRoamTime() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "RoamTime", signature: DBusSignature("u"));
    return value.asUint32();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.RoamComplete
  Future<bool> getRoamComplete() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "RoamComplete", signature: DBusSignature("b"));
    return value.asBoolean();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.SessionLength
  Future<int> getSessionLength() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "SessionLength", signature: DBusSignature("u"));
    return value.asUint32();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.BSSTMStatus
  Future<int> getBSSTMStatus() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "BSSTMStatus", signature: DBusSignature("u"));
    return value.asUint32();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Stations
  Future<List<DBusObjectPath>> getStations() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Stations", signature: DBusSignature("ao"));
    return value.asObjectPathArray().toList();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.MACAddressRandomizationMask
  Future<Map<String, List<int>>> getMACAddressRandomizationMask() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "MACAddressRandomizationMask", signature: DBusSignature("a{say}"));
    return value.asDict().map((DBusValue key, DBusValue value) => MapEntry(key.asString(), value.asByteArray().toList()));
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.MACAddressRandomizationMask
  Future<void> setMACAddressRandomizationMask (Map<String, List<int>> value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "MACAddressRandomizationMask", DBusDict(DBusSignature("s"), DBusSignature("ay"), value.map((String key, List<int> value) => MapEntry(DBusString(key), DBusArray.byte(value)))));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.CtrlInterface
  Future<String> getCtrlInterface() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "CtrlInterface", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.CtrlInterface
  Future<void> setCtrlInterface (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "CtrlInterface", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.CtrlInterfaceGroup
  Future<String> getCtrlInterfaceGroup() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "CtrlInterfaceGroup", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.CtrlInterfaceGroup
  Future<void> setCtrlInterfaceGroup (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "CtrlInterfaceGroup", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.EapolVersion
  Future<String> getEapolVersion() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "EapolVersion", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.EapolVersion
  Future<void> setEapolVersion (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "EapolVersion", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Bgscan
  Future<String> getBgscan() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Bgscan", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Bgscan
  Future<void> setBgscan (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Bgscan", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.UserMpm
  Future<String> getUserMpm() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "UserMpm", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.UserMpm
  Future<void> setUserMpm (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "UserMpm", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.MaxPeerLinks
  Future<String> getMaxPeerLinks() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "MaxPeerLinks", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.MaxPeerLinks
  Future<void> setMaxPeerLinks (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "MaxPeerLinks", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.MeshMaxInactivity
  Future<String> getMeshMaxInactivity() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "MeshMaxInactivity", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.MeshMaxInactivity
  Future<void> setMeshMaxInactivity (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "MeshMaxInactivity", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.MeshFwding
  Future<String> getMeshFwding() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "MeshFwding", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.MeshFwding
  Future<void> setMeshFwding (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "MeshFwding", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Dot11RSNASAERetransPeriod
  Future<String> getDot11RSNASAERetransPeriod() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNASAERetransPeriod", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Dot11RSNASAERetransPeriod
  Future<void> setDot11RSNASAERetransPeriod (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNASAERetransPeriod", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DisableScanOffload
  Future<String> getDisableScanOffload() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DisableScanOffload", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DisableScanOffload
  Future<void> setDisableScanOffload (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DisableScanOffload", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.OpenscEnginePath
  Future<String> getOpenscEnginePath() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "OpenscEnginePath", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.OpenscEnginePath
  Future<void> setOpenscEnginePath (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "OpenscEnginePath", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.OpensslCiphers
  Future<String> getOpensslCiphers() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "OpensslCiphers", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.OpensslCiphers
  Future<void> setOpensslCiphers (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "OpensslCiphers", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.PcscReader
  Future<String> getPcscReader() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "PcscReader", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.PcscReader
  Future<void> setPcscReader (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "PcscReader", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.PcscPin
  Future<String> getPcscPin() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "PcscPin", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.PcscPin
  Future<void> setPcscPin (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "PcscPin", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ExternalSim
  Future<String> getExternalSim() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ExternalSim", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ExternalSim
  Future<void> setExternalSim (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ExternalSim", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DriverParam
  Future<String> getDriverParam() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DriverParam", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DriverParam
  Future<void> setDriverParam (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DriverParam", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Dot11RSNAConfigPMKLifetime
  Future<String> getDot11RSNAConfigPMKLifetime() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNAConfigPMKLifetime", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Dot11RSNAConfigPMKLifetime
  Future<void> setDot11RSNAConfigPMKLifetime (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNAConfigPMKLifetime", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Dot11RSNAConfigPMKReauthThreshold
  Future<String> getDot11RSNAConfigPMKReauthThreshold() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNAConfigPMKReauthThreshold", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Dot11RSNAConfigPMKReauthThreshold
  Future<void> setDot11RSNAConfigPMKReauthThreshold (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNAConfigPMKReauthThreshold", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Dot11RSNAConfigSATimeout
  Future<String> getDot11RSNAConfigSATimeout() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNAConfigSATimeout", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Dot11RSNAConfigSATimeout
  Future<void> setDot11RSNAConfigSATimeout (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Dot11RSNAConfigSATimeout", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.UpdateConfig
  Future<String> getUpdateConfig() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "UpdateConfig", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.UpdateConfig
  Future<void> setUpdateConfig (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "UpdateConfig", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.BssMaxCount
  Future<String> getBssMaxCount() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "BssMaxCount", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.BssMaxCount
  Future<void> setBssMaxCount (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "BssMaxCount", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FilterSsids
  Future<String> getFilterSsids() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FilterSsids", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FilterSsids
  Future<void> setFilterSsids (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FilterSsids", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FilterRssi
  Future<String> getFilterRssi() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FilterRssi", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FilterRssi
  Future<void> setFilterRssi (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FilterRssi", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.MaxNumSta
  Future<String> getMaxNumSta() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "MaxNumSta", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.MaxNumSta
  Future<void> setMaxNumSta (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "MaxNumSta", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ApIsolate
  Future<String> getApIsolate() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ApIsolate", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ApIsolate
  Future<void> setApIsolate (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ApIsolate", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DisassocLowAck
  Future<String> getDisassocLowAck() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DisassocLowAck", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DisassocLowAck
  Future<void> setDisassocLowAck (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DisassocLowAck", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Hs20
  Future<String> getHs20() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Hs20", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Hs20
  Future<void> setHs20 (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Hs20", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Interworking
  Future<String> getInterworking() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Interworking", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Interworking
  Future<void> setInterworking (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Interworking", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Hessid
  Future<String> getHessid() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Hessid", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Hessid
  Future<void> setHessid (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Hessid", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.AccessNetworkType
  Future<String> getAccessNetworkType() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "AccessNetworkType", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.AccessNetworkType
  Future<void> setAccessNetworkType (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "AccessNetworkType", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GoInterworking
  Future<String> getGoInterworking() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GoInterworking", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GoInterworking
  Future<void> setGoInterworking (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GoInterworking", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GoAccessNetworkType
  Future<String> getGoAccessNetworkType() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GoAccessNetworkType", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GoAccessNetworkType
  Future<void> setGoAccessNetworkType (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GoAccessNetworkType", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GoInternet
  Future<String> getGoInternet() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GoInternet", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GoInternet
  Future<void> setGoInternet (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GoInternet", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GoVenueGroup
  Future<String> getGoVenueGroup() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GoVenueGroup", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GoVenueGroup
  Future<void> setGoVenueGroup (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GoVenueGroup", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GoVenueType
  Future<String> getGoVenueType() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GoVenueType", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GoVenueType
  Future<void> setGoVenueType (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GoVenueType", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.PbcInM1
  Future<String> getPbcInM1() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "PbcInM1", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.PbcInM1
  Future<void> setPbcInM1 (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "PbcInM1", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Autoscan
  Future<String> getAutoscan() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Autoscan", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Autoscan
  Future<void> setAutoscan (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Autoscan", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WpsNfcDevPwId
  Future<String> getWpsNfcDevPwId() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDevPwId", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WpsNfcDevPwId
  Future<void> setWpsNfcDevPwId (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDevPwId", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WpsNfcDhPubkey
  Future<String> getWpsNfcDhPubkey() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDhPubkey", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WpsNfcDhPubkey
  Future<void> setWpsNfcDhPubkey (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDhPubkey", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WpsNfcDhPrivkey
  Future<String> getWpsNfcDhPrivkey() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDhPrivkey", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WpsNfcDhPrivkey
  Future<void> setWpsNfcDhPrivkey (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDhPrivkey", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WpsNfcDevPw
  Future<String> getWpsNfcDevPw() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDevPw", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WpsNfcDevPw
  Future<void> setWpsNfcDevPw (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WpsNfcDevPw", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ExtPasswordBackend
  Future<String> getExtPasswordBackend() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ExtPasswordBackend", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ExtPasswordBackend
  Future<void> setExtPasswordBackend (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ExtPasswordBackend", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.P2pGoMaxInactivity
  Future<String> getP2pGoMaxInactivity() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "P2pGoMaxInactivity", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.P2pGoMaxInactivity
  Future<void> setP2pGoMaxInactivity (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "P2pGoMaxInactivity", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.AutoInterworking
  Future<String> getAutoInterworking() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "AutoInterworking", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.AutoInterworking
  Future<void> setAutoInterworking (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "AutoInterworking", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Okc
  Future<String> getOkc() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Okc", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Okc
  Future<void> setOkc (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Okc", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Pmf
  Future<String> getPmf() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Pmf", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Pmf
  Future<void> setPmf (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Pmf", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.SaeGroups
  Future<String> getSaeGroups() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "SaeGroups", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.SaeGroups
  Future<void> setSaeGroups (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "SaeGroups", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.SaePwe
  Future<String> getSaePwe() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "SaePwe", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.SaePwe
  Future<void> setSaePwe (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "SaePwe", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.SaePmkidInAssoc
  Future<String> getSaePmkidInAssoc() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "SaePmkidInAssoc", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.SaePmkidInAssoc
  Future<void> setSaePmkidInAssoc (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "SaePmkidInAssoc", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DtimPeriod
  Future<String> getDtimPeriod() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DtimPeriod", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DtimPeriod
  Future<void> setDtimPeriod (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DtimPeriod", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.BeaconInt
  Future<String> getBeaconInt() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "BeaconInt", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.BeaconInt
  Future<void> setBeaconInt (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "BeaconInt", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ApAssocrespElements
  Future<String> getApAssocrespElements() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ApAssocrespElements", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ApAssocrespElements
  Future<void> setApAssocrespElements (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ApAssocrespElements", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ApVendorElements
  Future<String> getApVendorElements() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ApVendorElements", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ApVendorElements
  Future<void> setApVendorElements (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ApVendorElements", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.IgnoreOldScanRes
  Future<String> getIgnoreOldScanRes() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "IgnoreOldScanRes", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.IgnoreOldScanRes
  Future<void> setIgnoreOldScanRes (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "IgnoreOldScanRes", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FreqList
  Future<String> getFreqList() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FreqList", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FreqList
  Future<void> setFreqList (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FreqList", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.InitialFreqList
  Future<String> getInitialFreqList() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "InitialFreqList", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.InitialFreqList
  Future<void> setInitialFreqList (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "InitialFreqList", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ScanCurFreq
  Future<String> getScanCurFreq() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ScanCurFreq", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ScanCurFreq
  Future<void> setScanCurFreq (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ScanCurFreq", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ScanResValidForConnect
  Future<String> getScanResValidForConnect() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ScanResValidForConnect", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ScanResValidForConnect
  Future<void> setScanResValidForConnect (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ScanResValidForConnect", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.SchedScanInterval
  Future<String> getSchedScanInterval() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "SchedScanInterval", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.SchedScanInterval
  Future<void> setSchedScanInterval (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "SchedScanInterval", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.SchedScanStartDelay
  Future<String> getSchedScanStartDelay() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "SchedScanStartDelay", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.SchedScanStartDelay
  Future<void> setSchedScanStartDelay (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "SchedScanStartDelay", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.TdlsExternalControl
  Future<String> getTdlsExternalControl() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "TdlsExternalControl", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.TdlsExternalControl
  Future<void> setTdlsExternalControl (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "TdlsExternalControl", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.OsuDir
  Future<String> getOsuDir() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "OsuDir", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.OsuDir
  Future<void> setOsuDir (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "OsuDir", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WowlanTriggers
  Future<String> getWowlanTriggers() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WowlanTriggers", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WowlanTriggers
  Future<void> setWowlanTriggers (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WowlanTriggers", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.P2pSearchDelay
  Future<String> getP2pSearchDelay() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "P2pSearchDelay", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.P2pSearchDelay
  Future<void> setP2pSearchDelay (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "P2pSearchDelay", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.MacAddr
  Future<String> getMacAddr() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "MacAddr", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.MacAddr
  Future<void> setMacAddr (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "MacAddr", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.RandAddrLifetime
  Future<String> getRandAddrLifetime() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "RandAddrLifetime", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.RandAddrLifetime
  Future<void> setRandAddrLifetime (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "RandAddrLifetime", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.PreassocMacAddr
  Future<String> getPreassocMacAddr() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "PreassocMacAddr", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.PreassocMacAddr
  Future<void> setPreassocMacAddr (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "PreassocMacAddr", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.KeyMgmtOffload
  Future<String> getKeyMgmtOffload() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "KeyMgmtOffload", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.KeyMgmtOffload
  Future<void> setKeyMgmtOffload (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "KeyMgmtOffload", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.PassiveScan
  Future<String> getPassiveScan() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "PassiveScan", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.PassiveScan
  Future<void> setPassiveScan (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "PassiveScan", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ReassocSameBssOptim
  Future<String> getReassocSameBssOptim() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ReassocSameBssOptim", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ReassocSameBssOptim
  Future<void> setReassocSameBssOptim (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ReassocSameBssOptim", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WpsPriority
  Future<String> getWpsPriority() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WpsPriority", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WpsPriority
  Future<void> setWpsPriority (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WpsPriority", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FstGroupId
  Future<String> getFstGroupId() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FstGroupId", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FstGroupId
  Future<void> setFstGroupId (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FstGroupId", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FstPriority
  Future<String> getFstPriority() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FstPriority", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FstPriority
  Future<void> setFstPriority (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FstPriority", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FstLlt
  Future<String> getFstLlt() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FstLlt", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FstLlt
  Future<void> setFstLlt (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FstLlt", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.CertInCb
  Future<String> getCertInCb() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "CertInCb", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.CertInCb
  Future<void> setCertInCb (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "CertInCb", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WpaRscRelaxation
  Future<String> getWpaRscRelaxation() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WpaRscRelaxation", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WpaRscRelaxation
  Future<void> setWpaRscRelaxation (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WpaRscRelaxation", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.SchedScanPlans
  Future<String> getSchedScanPlans() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "SchedScanPlans", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.SchedScanPlans
  Future<void> setSchedScanPlans (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "SchedScanPlans", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.NonPrefChan
  Future<String> getNonPrefChan() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "NonPrefChan", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.NonPrefChan
  Future<void> setNonPrefChan (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "NonPrefChan", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.MboCellCapa
  Future<String> getMboCellCapa() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "MboCellCapa", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.MboCellCapa
  Future<void> setMboCellCapa (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "MboCellCapa", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DisassocImminentRssiThreshold
  Future<String> getDisassocImminentRssiThreshold() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DisassocImminentRssiThreshold", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DisassocImminentRssiThreshold
  Future<void> setDisassocImminentRssiThreshold (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DisassocImminentRssiThreshold", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Oce
  Future<String> getOce() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "Oce", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.Oce
  Future<void> setOce (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "Oce", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GasAddress3
  Future<String> getGasAddress3() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GasAddress3", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GasAddress3
  Future<void> setGasAddress3 (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GasAddress3", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FtmResponder
  Future<String> getFtmResponder() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FtmResponder", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FtmResponder
  Future<void> setFtmResponder (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FtmResponder", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.FtmInitiator
  Future<String> getFtmInitiator() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "FtmInitiator", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.FtmInitiator
  Future<void> setFtmInitiator (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "FtmInitiator", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GasRandAddrLifetime
  Future<String> getGasRandAddrLifetime() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GasRandAddrLifetime", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GasRandAddrLifetime
  Future<void> setGasRandAddrLifetime (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GasRandAddrLifetime", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.GasRandMacAddr
  Future<String> getGasRandMacAddr() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "GasRandMacAddr", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.GasRandMacAddr
  Future<void> setGasRandMacAddr (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "GasRandMacAddr", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DppConfigProcessing
  Future<String> getDppConfigProcessing() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DppConfigProcessing", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DppConfigProcessing
  Future<void> setDppConfigProcessing (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DppConfigProcessing", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DppName
  Future<String> getDppName() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DppName", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DppName
  Future<void> setDppName (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DppName", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DppMudUrl
  Future<String> getDppMudUrl() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DppMudUrl", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DppMudUrl
  Future<void> setDppMudUrl (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DppMudUrl", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ColocIntfReporting
  Future<String> getColocIntfReporting() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ColocIntfReporting", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ColocIntfReporting
  Future<void> setColocIntfReporting (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ColocIntfReporting", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.DisableBtm
  Future<String> getDisableBtm() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "DisableBtm", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.DisableBtm
  Future<void> setDisableBtm (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "DisableBtm", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.ExtendedKeyId
  Future<String> getExtendedKeyId() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "ExtendedKeyId", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.ExtendedKeyId
  Future<void> setExtendedKeyId (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "ExtendedKeyId", DBusString(value));
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.WowlanDisconnectOnDeinit
  Future<String> getWowlanDisconnectOnDeinit() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface", "WowlanDisconnectOnDeinit", signature: DBusSignature("s"));
    return value.asString();
  }

  /// Sets fi.w1.wpa_supplicant1.Interface.WowlanDisconnectOnDeinit
  Future<void> setWowlanDisconnectOnDeinit (String value) async {
    await setProperty("fi.w1.wpa_supplicant1.Interface", "WowlanDisconnectOnDeinit", DBusString(value));
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.Scan()
  Future<void> callScan(Map<String, DBusValue> args, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "Scan", [DBusDict.stringVariant(args)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.SignalPoll()
  Future<Map<String, DBusValue>> callSignalPoll({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("fi.w1.wpa_supplicant1.Interface", "SignalPoll", [], replySignature: DBusSignature("a{sv}"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asStringVariantDict();
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.Disconnect()
  Future<void> callDisconnect({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "Disconnect", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.AddNetwork()
  Future<DBusObjectPath> callAddNetwork(Map<String, DBusValue> args, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("fi.w1.wpa_supplicant1.Interface", "AddNetwork", [DBusDict.stringVariant(args)], replySignature: DBusSignature("o"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asObjectPath();
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.Reassociate()
  Future<void> callReassociate({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "Reassociate", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.Reattach()
  Future<void> callReattach({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "Reattach", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.Reconnect()
  Future<void> callReconnect({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "Reconnect", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.RemoveNetwork()
  Future<void> callRemoveNetwork(String path, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "RemoveNetwork", [DBusObjectPath(path)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.RemoveAllNetworks()
  Future<void> callRemoveAllNetworks({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "RemoveAllNetworks", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.SelectNetwork()
  Future<void> callSelectNetwork(String path, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "SelectNetwork", [DBusObjectPath(path)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.NetworkReply()
  Future<void> callNetworkReply(String path, String field, String value, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "NetworkReply", [DBusObjectPath(path), DBusString(field), DBusString(value)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.Roam()
  Future<void> callRoam(String addr, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "Roam", [DBusString(addr)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.AddBlob()
  Future<void> callAddBlob(String name, List<int> data, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "AddBlob", [DBusString(name), DBusArray.byte(data)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.GetBlob()
  Future<List<int>> callGetBlob(String name, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("fi.w1.wpa_supplicant1.Interface", "GetBlob", [DBusString(name)], replySignature: DBusSignature("ay"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asByteArray().toList();
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.RemoveBlob()
  Future<void> callRemoveBlob(String name, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "RemoveBlob", [DBusString(name)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.SetPKCS11EngineAndModulePath()
  Future<void> callSetPKCS11EngineAndModulePath(String pkcs11_engine_path, String pkcs11_module_path, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "SetPKCS11EngineAndModulePath", [DBusString(pkcs11_engine_path), DBusString(pkcs11_module_path)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.FlushBSS()
  Future<void> callFlushBSS(int age, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "FlushBSS", [DBusUint32(age)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.SubscribeProbeReq()
  Future<void> callSubscribeProbeReq({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "SubscribeProbeReq", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.UnsubscribeProbeReq()
  Future<void> callUnsubscribeProbeReq({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "UnsubscribeProbeReq", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.EAPLogoff()
  Future<void> callEAPLogoff({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "EAPLogoff", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.EAPLogon()
  Future<void> callEAPLogon({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "EAPLogon", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.TDLSDiscover()
  Future<void> callTDLSDiscover(String peer_address, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "TDLSDiscover", [DBusString(peer_address)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.TDLSSetup()
  Future<void> callTDLSSetup(String peer_address, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "TDLSSetup", [DBusString(peer_address)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.TDLSStatus()
  Future<String> callTDLSStatus(String peer_address, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("fi.w1.wpa_supplicant1.Interface", "TDLSStatus", [DBusString(peer_address)], replySignature: DBusSignature("s"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asString();
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.TDLSTeardown()
  Future<void> callTDLSTeardown(String peer_address, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "TDLSTeardown", [DBusString(peer_address)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.TDLSChannelSwitch()
  Future<void> callTDLSChannelSwitch(Map<String, DBusValue> args, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "TDLSChannelSwitch", [DBusDict.stringVariant(args)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.TDLSCancelChannelSwitch()
  Future<void> callTDLSCancelChannelSwitch(String peer_address, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "TDLSCancelChannelSwitch", [DBusString(peer_address)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.VendorElemAdd()
  Future<void> callVendorElemAdd(int frame_id, List<int> ielems, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "VendorElemAdd", [DBusInt32(frame_id), DBusArray.byte(ielems)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.VendorElemGet()
  Future<List<int>> callVendorElemGet(int frame_id, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("fi.w1.wpa_supplicant1.Interface", "VendorElemGet", [DBusInt32(frame_id)], replySignature: DBusSignature("ay"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asByteArray().toList();
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.VendorElemRem()
  Future<void> callVendorElemRem(int frame_id, List<int> ielems, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "VendorElemRem", [DBusInt32(frame_id), DBusArray.byte(ielems)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.SaveConfig()
  Future<void> callSaveConfig({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "SaveConfig", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.AbortScan()
  Future<void> callAbortScan({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "AbortScan", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.AddCred()
  Future<DBusObjectPath> callAddCred(Map<String, DBusValue> args, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    DBusMethodSuccessResponse result = await callMethod("fi.w1.wpa_supplicant1.Interface", "AddCred", [DBusDict.stringVariant(args)], replySignature: DBusSignature("o"), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asObjectPath();
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.RemoveCred()
  Future<void> callRemoveCred(String path, {bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "RemoveCred", [DBusObjectPath(path)], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.RemoveAllCreds()
  Future<void> callRemoveAllCreds({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "RemoveAllCreds", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes fi.w1.wpa_supplicant1.Interface.InterworkingSelect()
  Future<void> callInterworkingSelect({bool noAutoStart = false, bool allowInteractiveAuthorization = false}) async {
    await callMethod("fi.w1.wpa_supplicant1.Interface", "InterworkingSelect", [], replySignature: DBusSignature(""), noAutoStart: noAutoStart, allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Mesh.MeshPeers
  Future<List<List<int>>> getMeshPeers() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface.Mesh", "MeshPeers", signature: DBusSignature("aay"));
    return value.asArray().map((DBusValue child) => child.asByteArray().toList()).toList();
  }

  /// Gets fi.w1.wpa_supplicant1.Interface.Mesh.MeshGroup
  Future<List<int>> getMeshGroup() async {
    DBusValue value = await getProperty("fi.w1.wpa_supplicant1.Interface.Mesh", "MeshGroup", signature: DBusSignature("ay"));
    return value.asByteArray().toList();
  }
}
