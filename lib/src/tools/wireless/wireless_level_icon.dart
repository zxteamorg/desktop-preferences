import "package:flutter/material.dart";

import "wireless_popup.dart" show WirelessPopup;

class WirelessLevelIcon extends StatelessWidget {
  final WirelessPopup wirelessLevelIconData;
  
  const WirelessLevelIcon(this.wirelessLevelIconData, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
      child: this.wirelessLevelIconData,
    );
  }
}
