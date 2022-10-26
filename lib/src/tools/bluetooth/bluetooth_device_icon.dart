import "package:flutter/material.dart";

import "bluetooth_service_contract.dart" show BluetoothDeviceName;

class BluetoothDeviceIcon extends StatelessWidget {
  final BluetoothDeviceName name;
  final bool isConnected;

  const BluetoothDeviceIcon({
    Key? key,
    required this.name,
    this.isConnected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconData? bluetoothDeviceIconData =
        BluetoothDeviceIcon._resolveIconData(this.name);

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

  static IconData? _resolveIconData(BluetoothDeviceName name) {
    switch (name) {
      case BluetoothDeviceName.television:
        return Icons.tv_rounded;
      case BluetoothDeviceName.headphones:
        return Icons.headset_rounded;
      case BluetoothDeviceName.microphone:
        return Icons.mic_rounded;
      case BluetoothDeviceName.smartphone:
        return Icons.smartphone_rounded;
      case BluetoothDeviceName.smartwatch:
        return Icons.watch_rounded;
      case BluetoothDeviceName.device:
        return Icons.bluetooth_rounded;
    }
  }
}
