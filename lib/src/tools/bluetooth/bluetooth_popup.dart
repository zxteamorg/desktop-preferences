import "package:flutter/material.dart"
    show Colors, Divider, Icons, Switch, TextDirection;
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
    show BluetoothDevice, BluetoothDeviceNameIcon;
import "bluetooth_device_icon.dart" show BluetoothDeviceIcon;

class BluetoothPopup extends StatelessWidget {
  const BluetoothPopup({Key? key}) : super(key: key);

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
    final List<BluetoothDevice> bluetoothDevices = controller.devices;
    final List<Widget> bluetoothWidgets = bluetoothDevices
        .map(BluetoothPopup
            ._deviceMapper) //transform each bluetooth device into a widget.
        .toList(growable: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5.0),
          child: Text("Devices", style: TextStyle(color: Colors.grey)),
        ),
        Row(
          children: <Widget>[
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: bluetoothWidgets,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  ///
  /// The method builds new Widget that includes a name of passed bluetooth device.
  ///
  static Widget _deviceMapper(final BluetoothDevice device) {
    final String bluetoothDeviceName = device.name;
    final IconData? bluetoothDeviceNameIcon =
        _resolveIconData(BluetoothDeviceNameIcon.headphones);

    return Row(
      children: <Widget>[
        Icon(bluetoothDeviceNameIcon),
        Text(bluetoothDeviceName),
      ],
    );
  }

  static IconData? _resolveIconData(BluetoothDeviceNameIcon nameIcon) {
    switch (nameIcon) {
      case BluetoothDeviceNameIcon.television:
        return Icons.tv_rounded;
      case BluetoothDeviceNameIcon.headphones:
        return Icons.headset_rounded;
      case BluetoothDeviceNameIcon.microphone:
        return Icons.mic_rounded;
      case BluetoothDeviceNameIcon.smartphone:
        return Icons.smartphone_rounded;
      case BluetoothDeviceNameIcon.smartwatch:
        return Icons.watch_rounded;
      case BluetoothDeviceNameIcon.device:
        return Icons.bluetooth_rounded;
    }
  }

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
