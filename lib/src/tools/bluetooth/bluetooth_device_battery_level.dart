import "package:flutter/material.dart";

import "bluetooth_service_contract.dart" show BluetoothBatteryLevel;

class BluetoothDeviceBatteryLevel extends StatelessWidget {
  final BluetoothBatteryLevel batteryLevel;
  final bool isConnected;

  const BluetoothDeviceBatteryLevel({
    Key? key,
    required this.batteryLevel,
    this.isConnected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconData bluetoothDeviceBatteryLevel =
        BluetoothDeviceBatteryLevel._resolveBatteryLevelData(batteryLevel);

    return Icon(
      bluetoothDeviceBatteryLevel,
    );
  }

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
}
