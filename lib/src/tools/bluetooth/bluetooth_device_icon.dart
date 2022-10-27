import "package:flutter/material.dart";

import "bluetooth_service_contract.dart" show BluetoothDeviceNameIcon;

class BluetoothDeviceIcon extends StatelessWidget {
  final BluetoothDeviceNameIcon nameIcon;
  final bool isConnected;

  const BluetoothDeviceIcon({
    Key? key,
    required this.nameIcon,
    this.isConnected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconData? bluetoothDeviceIconData =
        BluetoothDeviceIcon._resolveIconData(this.nameIcon);

    Color? decorationColor;
    Color? iconColor;

    if (isConnected) {
      decorationColor = Colors.blue;
      iconColor = Colors.white;
    } else {
      decorationColor = Colors.grey[400];
      iconColor = null;
    }

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: decorationColor,
      ),
      child: Icon(
        bluetoothDeviceIconData,
        color: iconColor,
      ),
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
}
