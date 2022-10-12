import "package:flutter/material.dart";

import "wireless_controller.dart" show WirelessController;

class WirelessSwitch extends StatefulWidget {
  final WirelessController controller;
  const WirelessSwitch(this.controller, {Key? key}) : super(key: key);

  @override
  State<WirelessSwitch> createState() => _WirelessSwitchState();
}

class _WirelessSwitchState extends State<WirelessSwitch> {
  @override
  Widget build(
    final BuildContext context,
  ) {
    return Switch(
      value: widget.controller.isEnabled,
      onChanged: (bool value) {
        setState(() {
          if (widget.controller.isEnabled) {
            widget.controller.disable();
          } else {
            widget.controller.enable();
          }
        });
      },
    );
  }
}
