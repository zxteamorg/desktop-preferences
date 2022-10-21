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

    Color? decorationIconColor;
    Color? iconColor;

    if (isConnected) {
      decorationIconColor = Colors.blue;
      iconColor = Colors.white;
    } else {
      decorationIconColor = Colors.grey[400];
      iconColor = null;
    }

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: decorationIconColor,
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
      case WirelessLevel.nice:
        return Icons.wifi_rounded;
    }
  }
}
