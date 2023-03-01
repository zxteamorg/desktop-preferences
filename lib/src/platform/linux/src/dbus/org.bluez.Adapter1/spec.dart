// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object 2.xml

import 'package:dbus/dbus.dart';

class OrgBluezAdapter1 extends DBusRemoteObject {
  OrgBluezAdapter1(DBusClient client, String destination,
      [DBusObjectPath? path])
      : super(
          client,
          name: destination,
          path: path ?? DBusObjectPath('/org/bluez/hci0'),
        );

  /// Gets org.bluez.Adapter1.Address
  Future<String> getAddress() async {
    var value = await getProperty('org.bluez.Adapter1', 'Address',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.Adapter1.Name
  Future<String> getName() async {
    var value = await getProperty('org.bluez.Adapter1', 'Name',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.Adapter1.Alias
  Future<String> getAlias() async {
    var value = await getProperty('org.bluez.Adapter1', 'Alias',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Sets org.bluez.Adapter1.Alias
  Future<void> setAlias(String value) async {
    await setProperty('org.bluez.Adapter1', 'Alias', DBusString(value));
  }

  /// Gets org.bluez.Adapter1.Class
  Future<int> getClass() async {
    var value = await getProperty('org.bluez.Adapter1', 'Class',
        signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.bluez.Adapter1.Powered
  Future<bool> getPowered() async {
    var value = await getProperty('org.bluez.Adapter1', 'Powered',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Sets org.bluez.Adapter1.Powered
  Future<void> setPowered(bool value) async {
    await setProperty('org.bluez.Adapter1', 'Powered', DBusBoolean(value));
  }

  /// Gets org.bluez.Adapter1.Discoverable
  Future<bool> getDiscoverable() async {
    var value = await getProperty('org.bluez.Adapter1', 'Discoverable',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Sets org.bluez.Adapter1.Discoverable
  Future<void> setDiscoverable(bool value) async {
    await setProperty('org.bluez.Adapter1', 'Discoverable', DBusBoolean(value));
  }

  /// Gets org.bluez.Adapter1.DiscoverableTimeout
  Future<int> getDiscoverableTimeout() async {
    var value = await getProperty('org.bluez.Adapter1', 'DiscoverableTimeout',
        signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Sets org.bluez.Adapter1.DiscoverableTimeout
  Future<void> setDiscoverableTimeout(int value) async {
    await setProperty(
        'org.bluez.Adapter1', 'DiscoverableTimeout', DBusUint32(value));
  }

  /// Gets org.bluez.Adapter1.Pairable
  Future<bool> getPairable() async {
    var value = await getProperty('org.bluez.Adapter1', 'Pairable',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Sets org.bluez.Adapter1.Pairable
  Future<void> setPairable(bool value) async {
    await setProperty('org.bluez.Adapter1', 'Pairable', DBusBoolean(value));
  }

  /// Gets org.bluez.Adapter1.PairableTimeout
  Future<int> getPairableTimeout() async {
    var value = await getProperty('org.bluez.Adapter1', 'PairableTimeout',
        signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Sets org.bluez.Adapter1.PairableTimeout
  Future<void> setPairableTimeout(int value) async {
    await setProperty(
        'org.bluez.Adapter1', 'PairableTimeout', DBusUint32(value));
  }

  /// Gets org.bluez.Adapter1.Discovering
  Future<bool> getDiscovering() async {
    var value = await getProperty('org.bluez.Adapter1', 'Discovering',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.bluez.Adapter1.UUIDs
  Future<List<String>> getUUIDs() async {
    var value = await getProperty('org.bluez.Adapter1', 'UUIDs',
        signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Gets org.bluez.Adapter1.Modalias
  Future<String> getModalias() async {
    var value = await getProperty('org.bluez.Adapter1', 'Modalias',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Invokes org.bluez.Adapter1.StartDisSScovery()
  Future<void> callStartDiscovery(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Adapter1', 'StartDiscovery', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Adapter1.StopDiscovery()
  Future<void> callStopDiscovery(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Adapter1', 'StopDiscovery', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Adapter1.RemoveDevice()
  Future<void> callRemoveDevice(String device,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod(
        'org.bluez.Adapter1', 'RemoveDevice', [DBusObjectPath(device)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Adapter1.SetDiscoveryFilter()
  Future<void> callSetDiscoveryFilter(Map<String, DBusValue> filter,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Adapter1', 'SetDiscoveryFilter',
        [DBusDict.stringVariant(filter)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Gets org.bluez.Device1.Address
  Future<String> getAddress_() async {
    var value = await getProperty('org.bluez.Device1', 'Address',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.Device1.Name
  Future<String> getName_() async {
    var value = await getProperty('org.bluez.Device1', 'Name',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.Device1.Alias
  Future<String> getAlias_() async {
    var value = await getProperty('org.bluez.Device1', 'Alias',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Sets org.bluez.Device1.Alias
  Future<void> setAlias_(String value) async {
    await setProperty('org.bluez.Device1', 'Alias', DBusString(value));
  }

  /// Gets org.bluez.Device1.Class
  Future<int> getClass_() async {
    var value = await getProperty('org.bluez.Device1', 'Class',
        signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.bluez.Device1.Appearance
  Future<int> getAppearance() async {
    var value = await getProperty('org.bluez.Device1', 'Appearance',
        signature: DBusSignature('q'));
    return value.asUint16();
  }

  /// Gets org.bluez.Device1.Icon
  Future<String> getIcon() async {
    var value = await getProperty('org.bluez.Device1', 'Icon',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.Device1.Paired
  Future<bool> getPaired() async {
    var value = await getProperty('org.bluez.Device1', 'Paired',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.bluez.Device1.Trusted
  Future<bool> getTrusted() async {
    var value = await getProperty('org.bluez.Device1', 'Trusted',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Sets org.bluez.Device1.Trusted
  Future<void> setTrusted(bool value) async {
    await setProperty('org.bluez.Device1', 'Trusted', DBusBoolean(value));
  }

  /// Gets org.bluez.Device1.Blocked
  Future<bool> getBlocked() async {
    var value = await getProperty('org.bluez.Device1', 'Blocked',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Sets org.bluez.Device1.Blocked
  Future<void> setBlocked(bool value) async {
    await setProperty('org.bluez.Device1', 'Blocked', DBusBoolean(value));
  }

  /// Gets org.bluez.Device1.LegacyPairing
  Future<bool> getLegacyPairing() async {
    var value = await getProperty('org.bluez.Device1', 'LegacyPairing',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.bluez.Device1.RSSI
  Future<int> getRSSI() async {
    var value = await getProperty('org.bluez.Device1', 'RSSI',
        signature: DBusSignature('n'));
    return value.asInt16();
  }

  /// Gets org.bluez.Device1.Connected
  Future<bool> getConnected() async {
    var value = await getProperty('org.bluez.Device1', 'Connected',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.bluez.Device1.UUIDs
  Future<List<String>> getUUIDs_() async {
    var value = await getProperty('org.bluez.Device1', 'UUIDs',
        signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Gets org.bluez.Device1.Modalias
  Future<String> getModalias_() async {
    var value = await getProperty('org.bluez.Device1', 'Modalias',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.Device1.Adapter
  Future<DBusObjectPath> getAdapter() async {
    var value = await getProperty('org.bluez.Device1', 'Adapter',
        signature: DBusSignature('o'));
    return value.asObjectPath();
  }

  /// Gets org.bluez.Device1.ManufacturerData
  Future<Map<int, DBusValue>> getManufacturerData() async {
    var value = await getProperty('org.bluez.Device1', 'ManufacturerData',
        signature: DBusSignature('a{qv}'));
    return value
        .asDict()
        .map((key, value) => MapEntry(key.asUint16(), value.asVariant()));
  }

  /// Gets org.bluez.Device1.ServiceData
  Future<Map<String, DBusValue>> getServiceData() async {
    var value = await getProperty('org.bluez.Device1', 'ServiceData',
        signature: DBusSignature('a{sv}'));
    return value.asStringVariantDict();
  }

  /// Gets org.bluez.Device1.TxPower
  Future<int> getTxPower() async {
    var value = await getProperty('org.bluez.Device1', 'TxPower',
        signature: DBusSignature('n'));
    return value.asInt16();
  }

  /// Gets org.bluez.Device1.ServicesResolved
  Future<bool> getServicesResolved() async {
    var value = await getProperty('org.bluez.Device1', 'ServicesResolved',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Invokes org.bluez.Device1.Disconnect()
  Future<void> callDisconnect(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Device1', 'Disconnect', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Device1.Connect()
  Future<void> callConnect(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Device1', 'Connect', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Device1.ConnectProfile()
  Future<void> callConnectProfile(String UUID,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Device1', 'ConnectProfile', [DBusString(UUID)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Device1.DisconnectProfile()
  Future<void> callDisconnectProfile(String UUID,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod(
        'org.bluez.Device1', 'DisconnectProfile', [DBusString(UUID)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Device1.Pair()
  Future<void> callPair(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Device1', 'Pair', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.Device1.CancelPairing()
  Future<void> callCancelPairing(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.Device1', 'CancelPairing', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Gets org.bluez.GattService1.UUID
  Future<String> getUUID() async {
    var value = await getProperty('org.bluez.GattService1', 'UUID',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.GattService1.Device
  Future<DBusObjectPath> getDevice() async {
    var value = await getProperty('org.bluez.GattService1', 'Device',
        signature: DBusSignature('o'));
    return value.asObjectPath();
  }

  /// Gets org.bluez.GattService1.Primary
  Future<bool> getPrimary() async {
    var value = await getProperty('org.bluez.GattService1', 'Primary',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.bluez.GattService1.Characteristics
  Future<List<DBusObjectPath>> getCharacteristics() async {
    var value = await getProperty('org.bluez.GattService1', 'Characteristics',
        signature: DBusSignature('ao'));
    return value.asObjectPathArray().toList();
  }

  /// Gets org.bluez.GattCharacteristic1.UUID
  Future<String> getUUID_() async {
    var value = await getProperty('org.bluez.GattCharacteristic1', 'UUID',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.GattCharacteristic1.Service
  Future<DBusObjectPath> getService() async {
    var value = await getProperty('org.bluez.GattCharacteristic1', 'Service',
        signature: DBusSignature('o'));
    return value.asObjectPath();
  }

  /// Gets org.bluez.GattCharacteristic1.Value
  Future<List<int>> getValue() async {
    var value = await getProperty('org.bluez.GattCharacteristic1', 'Value',
        signature: DBusSignature('ay'));
    return value.asByteArray().toList();
  }

  /// Gets org.bluez.GattCharacteristic1.Notifying
  Future<bool> getNotifying() async {
    var value = await getProperty('org.bluez.GattCharacteristic1', 'Notifying',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.bluez.GattCharacteristic1.Flags
  Future<List<String>> getFlags() async {
    var value = await getProperty('org.bluez.GattCharacteristic1', 'Flags',
        signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Gets org.bluez.GattCharacteristic1.Descriptors
  Future<List<DBusObjectPath>> getDescriptors() async {
    var value = await getProperty(
        'org.bluez.GattCharacteristic1', 'Descriptors',
        signature: DBusSignature('ao'));
    return value.asObjectPathArray().toList();
  }

  /// Invokes org.bluez.GattCharacteristic1.ReadValue()
  Future<List<int>> callReadValue(Map<String, DBusValue> options,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.bluez.GattCharacteristic1', 'ReadValue',
        [DBusDict.stringVariant(options)],
        replySignature: DBusSignature('ay'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asByteArray().toList();
  }

  /// Invokes org.bluez.GattCharacteristic1.WriteValue()
  Future<void> callWriteValue(List<int> value, Map<String, DBusValue> options,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.GattCharacteristic1', 'WriteValue',
        [DBusArray.byte(value), DBusDict.stringVariant(options)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.GattCharacteristic1.StartNotify()
  Future<void> callStartNotify(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.GattCharacteristic1', 'StartNotify', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.bluez.GattCharacteristic1.StopNotify()
  Future<void> callStopNotify(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.GattCharacteristic1', 'StopNotify', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Gets org.bluez.GattDescriptor1.UUID
  Future<String> getUUID__() async {
    var value = await getProperty('org.bluez.GattDescriptor1', 'UUID',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.bluez.GattDescriptor1.Characteristic
  Future<DBusObjectPath> getCharacteristic() async {
    var value = await getProperty('org.bluez.GattDescriptor1', 'Characteristic',
        signature: DBusSignature('o'));
    return value.asObjectPath();
  }

  /// Gets org.bluez.GattDescriptor1.Value
  Future<List<int>> getValue_() async {
    var value = await getProperty('org.bluez.GattDescriptor1', 'Value',
        signature: DBusSignature('ay'));
    return value.asByteArray().toList();
  }

  /// Invokes org.bluez.GattDescriptor1.ReadValue()
  Future<List<int>> callReadValue_(Map<String, DBusValue> options,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.bluez.GattDescriptor1', 'ReadValue',
        [DBusDict.stringVariant(options)],
        replySignature: DBusSignature('ay'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0].asByteArray().toList();
  }

  /// Invokes org.bluez.GattDescriptor1.WriteValue()
  Future<void> callWriteValue_(List<int> value, Map<String, DBusValue> options,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.bluez.GattDescriptor1', 'WriteValue',
        [DBusArray.byte(value), DBusDict.stringVariant(options)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }
}
