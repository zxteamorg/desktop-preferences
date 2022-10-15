import "package:flutter/material.dart";

class WirelessLevelIcon extends StatelessWidget {
  final IconData iconData;
  final Color? color;

  const WirelessLevelIcon({
    Key? key,
    required this.iconData,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      this.iconData,
      color: this.color,
    );
  }
}
