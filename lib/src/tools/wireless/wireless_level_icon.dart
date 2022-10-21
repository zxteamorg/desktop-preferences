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
        wirelessLevelIconData,
        color: iconColor,
      ),
    );
  }

  static IconData _resolveIconData(WirelessLevel level) {
    switch (level) {
      case WirelessLevel.poor:
        return Icons.wifi_1_bar_rounded;
      case WirelessLevel.good:
        return Icons.wifi_2_bar_rounded;
      case WirelessLevel.excellent:
        return Icons.wifi_rounded;
    }
  }
}
