import "package:flutter/material.dart";

import "wireless_controller.dart" show WirelessController;

class WirelessSwitchTile extends StatefulWidget {
  final WirelessController controller;
  WirelessSwitchTile(this.controller);

  @override
  State<WirelessSwitchTile> createState() => _WirelessSwitchTileState();
}

class _WirelessSwitchTileState extends State<WirelessSwitchTile> {
  @override
  Widget build(
    final BuildContext context,
  ) {
    return Ink(
        color: Colors.grey,
        child: SwitchListTile(
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
          title: const Text("Wi-Fi",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
        ));
  }
}
