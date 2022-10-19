import "package:flutter/material.dart";

import "wireless_service_contract.dart" show WirelessLevel;

class WirelessLevelIcon extends StatelessWidget {
  final WirelessLevel level;
  final Color? color;

  const WirelessLevelIcon({
    Key? key,
    required this.level,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WirelessLevelIcon(
      level: this.level,
      color: this.color,
    );
  }

    IconData resolveOtherNetworksIcon(WirelessLevel level) {
    if (level == WirelessLevel.poor) {
      return Icons.wifi_1_bar_rounded;
    }
    if (level == WirelessLevel.good) {
      return Icons.wifi_1_bar;
    }
    if (level == WirelessLevel.nice) {
      return Icons.wifi_2_bar;
    }
    return Icons.wifi;
  }
}
