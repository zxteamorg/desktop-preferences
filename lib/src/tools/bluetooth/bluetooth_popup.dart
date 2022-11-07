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
    show BluetoothDevice, BluetoothHardwareType, BluetoothBatteryLevel;
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
      padding: const EdgeInsets.symmetric(horizontal: 0),
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

    /// Transform each bluetooth device into a widget.
    final List<Widget> bluetoothWidgets = bluetoothDevices
        .map(BluetoothPopup._deviceMapper)
        .toList(growable: false);

    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Devices",
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w800,
              )),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
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
  /// The method builds new Widget that includes a name of passed bluetooth device.
  ///
  static Widget _deviceMapper(final BluetoothDevice device) {
    /// Get device name from device.
    final String bluetoothDeviceName = device.name;
    final BluetoothBatteryLevel? batteryLevel = device.batteryLevel;

    final Widget? batteryLevelWidget = batteryLevel != null
        ? BluetoothDeviceBatteryLevel(batteryLevel: batteryLevel)
        : null;

    return Row(
      children: <Widget>[
        /// Set the icon for device
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
          ),
          child: BluetoothDeviceIcon(
            hardwareType: device.hardwareType,
          ),
        ),
        Text(bluetoothDeviceName),
        const Spacer(),

        /// Set the battery icon for device

        /// if (batteryLevelWidget != null) const Spacer(),
        if (batteryLevelWidget != null) batteryLevelWidget,
      ],
    );
  }

  /// Form a section Bluetooth Preferences.
  Widget _buildFooterSection(
    BluetoothController controller,
  ) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Text(
        "Bluetooth Preferences...",
      ),
    );
  }
}
