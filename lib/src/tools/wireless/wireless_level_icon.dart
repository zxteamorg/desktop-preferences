import "package:flutter/material.dart";

import "wireless_service_contract.dart" show WirelessLevel;

class WirelessLevelIcon extends StatelessWidget {
  final WirelessLevel level;
  final bool isConnected;

  const WirelessLevelIcon({
    Key? key,
    required this.level,
    this.isConnected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconData wirelessLevelIconData =
        WirelessLevelIcon._resolveIconData(this.level);
    if (isConnected == true) {
      return Container(
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        child: Icon(
          wirelessLevelIconData,
          color: this.isConnected ? Colors.white : null,
        ),
      );
    }
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Color.fromARGB(105, 45, 40, 41)),
      child: Icon(
        wirelessLevelIconData,
        color: this.isConnected ? Colors.grey : null,
      ),
    );
  }

  static IconData _resolveIconData(WirelessLevel level) {
    if (level == WirelessLevel.poor) {
      return Icons.wifi_1_bar;
    }
    if (level == WirelessLevel.good) {
      return Icons.wifi_2_bar;
    }
    if (level == WirelessLevel.nice) {
      return Icons.wifi_2_bar;
    }
    return Icons.wifi;
  }
}
