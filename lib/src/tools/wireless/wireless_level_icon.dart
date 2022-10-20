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

    return Icon(
      wirelessLevelIconData,
      color: this.isConnected ? Colors.blue : null,
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
