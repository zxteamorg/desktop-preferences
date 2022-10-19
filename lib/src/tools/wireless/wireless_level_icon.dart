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
    final IconData wirelessLevelIconData =
        this._resolveOtherNetworksIcon(this.level);

    return Icon(
      wirelessLevelIconData,
      color: this.color,
    );
  }

  IconData _resolveOtherNetworksIcon(WirelessLevel level) {
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
