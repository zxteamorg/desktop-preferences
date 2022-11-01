import "package:flutter/material.dart";

import "bluetooth_service_contract.dart" show BluetoothHardwareType;

class BluetoothDeviceIcon extends StatelessWidget {
  final BluetoothHardwareType hardwareType;
  final bool isConnected;

  const BluetoothDeviceIcon({
    Key? key,
    required this.hardwareType,
    this.isConnected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconData? bluetoothDeviceIconData =
        BluetoothDeviceIcon._resolveIconData(this.hardwareType);

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

  static IconData? _resolveIconData(BluetoothHardwareType deviceType) {
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
}
