import "package:flutter/material.dart" show Colors, Divider, Switch;

import "package:flutter/widgets.dart"
    show
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Flexible,
        FontWeight,
        Key,
        MainAxisSize,
        Padding,
        Row,
        SingleChildScrollView,
        Spacer,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
import "package:provider/provider.dart" show Consumer;

import "bluetooth_controller.dart" show BluetoothController;
import "bluetooth_service_contract.dart"
    show BluetoothDevice, BluetoothHardwareType;
import "bluetooth_device_icon.dart" show BluetoothDeviceIcon;
import "bluetooth_device_battery_level.dart" show BluetoothDeviceBatteryLevel;

class BluetoothPopup extends StatelessWidget {
  const BluetoothPopup({Key? key}) : super(key: key);

  static BluetoothHardwareType? get deviceType => null;

  @override
  Widget build(final BuildContext context) {
    return Consumer<BluetoothController>(
      builder: (
        BuildContext context,
        BluetoothController controller,
        Widget? child,
      ) =>
          this._buildContent(context, controller),
    );
  }

  Widget _buildContent(
    final BuildContext context,
    final BluetoothController controller,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        this._buildHeaderSection(controller),
        const Divider(),
        if (controller.isEnabled)
          this._buildMiddleScrollableSection(controller),
        if (controller.isEnabled) const Divider(),
        this._buildFooterSection(controller),
      ],
    );
  }

  Widget _buildHeaderSection(
    BluetoothController controller,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          const Text(
            "Bluetooth",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800),
          ),
          const Spacer(),
          Switch(
            value: controller.isEnabled,
            onChanged: (bool value) {
              if (controller.isEnabled) {
                controller.disable();
              } else {
                controller.enable();
              }
            },
          )
        ],
      ),
    );
  }

  Widget _buildMiddleScrollableSection(
    final BluetoothController controller,
  ) {
    /// Get a list of devices.
    final List<BluetoothDevice> bluetoothDevices = controller.devices;

    /// Transform bluetooth device into a widget.
    final List<Widget> bluetoothWidgets = bluetoothDevices
        .map(BluetoothPopup._deviceMapper)
        .toList(growable: false);

    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              left: 10.0,
            ),
            child: Text(
              "Devices",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: bluetoothWidgets,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///
  /// The method creates a new widget that includes the name, battery level and connection status of the passed device.
  ///
  static Widget _deviceMapper(final BluetoothDevice device) {
    /// Get device name from device.
    final String bluetoothDeviceName = device.name;
    final double? batteryLevel = device.batteryLevel;
    final Widget? batteryLevelWidget = batteryLevel != null
        ? BluetoothDeviceBatteryLevel(batteryLevel: batteryLevel)
        : null;
    final String? bluetoothTranslateBatteryLevel = batteryLevel != null
        ? BluetoothPopup._translateBatteryLevel(batteryLevel)
        : null;
    final bool isConnected = device.isConnected;

    return Row(
      children: <Widget>[
        /// Set the icon for device.
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),

          /// Set the type of device and connection status.
          child: BluetoothDeviceIcon(
            hardwareType: device.hardwareType,
            isConnected: isConnected,
          ),
        ),
        Text(bluetoothDeviceName),
        const Spacer(),

        /// Set battery percentage.
        if (bluetoothTranslateBatteryLevel != null)
          Text(
            bluetoothTranslateBatteryLevel,
            // style: const TextStyle(color: Colors.grey),
          ),

        /// Set the battery icon for device.
        if (batteryLevelWidget != null) batteryLevelWidget,
      ],
    );
  }

  ///
  /// The class converts the received number to a string.
  ///
  static String _translateBatteryLevel(double batteryLevel) {
    if (batteryLevel == 0) {
      return "0%";
    } else if (batteryLevel > 0 && batteryLevel <= 0.99) {
      final double level = batteryLevel * 100;
      final String stringLevel = level.toStringAsFixed(0);
      return "$stringLevel%";
    }
    return "100%";
  }

  /// Form a section Bluetooth Preferences.
  Widget _buildFooterSection(
    BluetoothController controller,
  ) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Bluetooth Preferences...",
      ),
    );
  }
}
