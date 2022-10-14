import "package:flutter/material.dart";

// import "wireless_popup.dart" show WirelessPopup;
// import "wireless_controller.dart" show WirelessController;

class WirelessLevelIcon extends StatelessWidget {
  // final wirelessLevelIconData;
  final iconData;
  final color;

  const WirelessLevelIcon(
      {Key? key,
      // this.wirelessLevelIconData,
      this.iconData,
      this.color})
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
