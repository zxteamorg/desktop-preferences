import "package:flutter/material.dart"
    show Alignment, Colors, Divider, Icons, SizedBox, Switch, TextDirection;
import "package:flutter/widgets.dart"
    show
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Flexible,
        FontWeight,
        Icon,
        IconData,
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
    show BluetoothBatteryLevel, BluetoothDevice, BluetoothHardwareType;
import "bluetooth_device_icon.dart" show BluetoothDeviceIcon;

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
          const Text("Bluetooth",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
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
    // Get a list of devices.
    final List<BluetoothDevice> bluetoothDevices = controller.devices;
    // Transform each bluetooth device into a widget.
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
    // Get device name from device.
    final String bluetoothDeviceName = device.name;
    // We get its type from the device and assign each device a corresponding icon.
    final IconData bluetoothDeviceNameIcon =
        BluetoothPopup._resolveIconData(device.deviceType);

    final IconData bluetoothDeviceBatteryLevel =
        BluetoothPopup._resolveBatteryLevelData(device.batteryLevel);

    return Row(
      children: <Widget>[
        Icon(bluetoothDeviceNameIcon),
        Text(bluetoothDeviceName),
        const Spacer(),
        Icon(bluetoothDeviceBatteryLevel),
      ],
    );
  }

// Assigning a charge level icon to each device
  static IconData _resolveBatteryLevelData(BluetoothBatteryLevel batteryLevel) {
    switch (batteryLevel) {
      case BluetoothBatteryLevel.poorLow:
        return Icons.battery_0_bar_rounded;
      case BluetoothBatteryLevel.low:
        return Icons.battery_1_bar_rounded;
      case BluetoothBatteryLevel.lowAverage:
        return Icons.battery_2_bar_rounded;
      case BluetoothBatteryLevel.average:
        return Icons.battery_3_bar_rounded;
      case BluetoothBatteryLevel.lowHight:
        return Icons.battery_4_bar_rounded;
      case BluetoothBatteryLevel.hight:
        return Icons.battery_5_bar_rounded;
      case BluetoothBatteryLevel.full:
        return Icons.battery_full_rounded;
    }
  }

// Each type of device is assigned the corresponding icon.
  static IconData _resolveIconData(final BluetoothHardwareType deviceType) {
    switch (deviceType) {
      case BluetoothHardwareType.television:
        return Icons.tv_rounded;
      case BluetoothHardwareType.headphones:
        return Icons.headset_rounded;
      case BluetoothHardwareType.microphone:
        return Icons.mic_rounded;
      case BluetoothHardwareType.smartphone:
        return Icons.smartphone_rounded;
      case BluetoothHardwareType.smartwatch:
        return Icons.watch_rounded;
      case BluetoothHardwareType.other:
        return Icons.bluetooth_rounded;
    }
  }

// Form a section Bluetooth Preferences.
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
